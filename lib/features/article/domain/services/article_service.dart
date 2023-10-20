import 'package:built_collection/built_collection.dart';
import 'package:either_dart/either.dart';
import 'package:sanctions_checker/features/article/domain/models/article.f.dart';
import 'package:sanctions_checker/features/article/domain/models/article_reference.f.dart';
import 'package:sanctions_checker/features/document/domain/services/document_storage_service.dart';
import 'package:sanctions_checker/network/entity/article_dto.b.dart';
import 'package:sanctions_checker/network/entity/document_dto.b.dart';

abstract interface class ArticleService {
  Future<Either<void, Article>> loadArticle(List<String> path);
}

class ArticleSearcher {
  ArticleSearcher({required this.document});
  final DocumentDTO document;

  Either<void, Article> findArticle(List<String> path) {
    BuiltMap<String, ArticleDTO>? sections = document.sections;
    var title = document.title;
    var body = document.source;
    for (final pathPart in path) {
      final section = sections?[pathPart];
      if (section == null) {
        // ignore: void_checks
        return const Left(());
      }
      sections = section.sections;
      title = section.title;
      body = section.body;
    }
    final resultSections = <ArticleReference>[];
    if (sections != null) {
      for (final key in sections.keys) {
        resultSections.add(ArticleReference(
          path: path + [key],
          title: sections[key]!.title,
        ));
      }
    }
    return Right(
      Article(
        title: title,
        body: body,
        sections: resultSections,
      ),
    );
  }
}

class ArticleServiceImpl implements ArticleService {
  ArticleServiceImpl({required this.documentStorageService});

  final DocumentStorageService documentStorageService;

  @override
  Future<Either<void, Article>> loadArticle(List<String> path) async {
    final result = await documentStorageService.loadDocument();
    if (result.isLeft) {
      // ignore: void_checks
      return const Left(());
    }
    return ArticleSearcher(document: result.right).findArticle(path);
  }
}
