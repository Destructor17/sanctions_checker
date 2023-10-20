import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanctions_checker/features/article/domain/models/article_reference.f.dart';

part 'article.f.freezed.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required String title,
    required String body,
    required List<ArticleReference> sections,
  }) = _Article;
}
