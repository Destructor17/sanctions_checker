import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import 'package:sanctions_checker/features/article/domain/models/article_reference.f.dart';
import 'package:sanctions_checker/features/article/domain/services/article_service.dart';
import 'package:sanctions_checker/features/document/domain/services/document_storage_service.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result.f.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result_item.f.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result_item_group.f.dart';
import 'package:sanctions_checker/network/entity/document_dto.b.dart';
import 'package:sanctions_checker/network/entity/document_list_dto.b.dart';

enum DocumentSearchType {
  fullText,
  key,
}

abstract interface class SearchService {
  Future<Either<void, SearchResult>> search(
    String text,
    DocumentSearchType searchType,
  );
}

class ListSearchResult {
  ListSearchResult({
    required this.key,
    required this.body,
    required this.path,
    required this.refs,
  });

  final String key;
  final String body;
  final List<String> path;
  final List<String> refs;
}

class ItemSearcher {
  ItemSearcher({
    required this.text,
    required this.searchType,
    required this.document,
  });
  final DocumentDTO document;
  final String text;
  final DocumentSearchType searchType;

  List<ListSearchResult> traverseLists(
    DocumentListDTO list,
    List<String> path,
  ) {
    final matchingItems = <ListSearchResult>[];
    list.body?.forEach((key, value) {
      final bool isMatched;
      switch (searchType) {
        case DocumentSearchType.key:
          isMatched = key.contains(text);
          break;

        case DocumentSearchType.fullText:
          isMatched = value.toLowerCase().contains(text.toLowerCase());
          break;

        default:
          isMatched = false;
      }
      if (isMatched) {
        matchingItems.add(ListSearchResult(
            key: key, path: path, refs: list.refs.toList(), body: value));
      }
    });
    list.sections?.forEach((key, list) {
      matchingItems.addAll(traverseLists(list, path + [key]));
    });
    return matchingItems;
  }

  List<SearchResultItemGroup> groupItems(List<ListSearchResult> items) {
    final grouped = <String, List<ListSearchResult>>{};
    const refsDelimiter = '||';
    for (final item in items) {
      final refKey = (item.refs..sort()).join(refsDelimiter);
      if (grouped.containsKey(refKey)) {
        grouped[refKey]?.add(item);
      } else {
        grouped[refKey] = [item];
      }
    }
    return grouped.keys
        .map(
          (refKey) => SearchResultItemGroup(
            articleReferences: refKey
                .split(refsDelimiter)
                .map((ref) {
                  final path = ref.split('/');
                  final articleResult =
                      ArticleSearcher(document: document).findArticle(path);
                  if (articleResult.isLeft) {
                    return null;
                  }
                  return ArticleReference(
                    path: path,
                    title: articleResult.right.title,
                  );
                })
                .whereType<ArticleReference>()
                .toList(),
            items: grouped[refKey]!
                .map(
                  (item) => SearchResultItem(
                    key: item.key,
                    body: item.body,
                  ),
                )
                .toList(),
          ),
        )
        .toList();
  }

  SearchResult search() {
    final matchingItems = <ListSearchResult>[];
    document.lists.forEach((key, list) {
      matchingItems.addAll(traverseLists(list, [key]));
    });

    return SearchResult(itemGroups: groupItems(matchingItems));
  }
}

class SearchServiceImpl implements SearchService {
  SearchServiceImpl({required this.documentStorageService});

  final DocumentStorageService documentStorageService;

  @override
  Future<Either<void, SearchResult>> search(
    String text,
    DocumentSearchType searchType,
  ) async {
    final result = await documentStorageService.loadDocument();
    if (result.isLeft) {
      // ignore: void_checks
      return const Left(());
    }
    final searchResult = await compute(
      (searcher) async => searcher.search(),
      ItemSearcher(
        document: result.right,
        text: text,
        searchType: searchType,
      ),
    );
    return Right(searchResult);
  }
}
