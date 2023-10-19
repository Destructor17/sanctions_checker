import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_article_reference.f.freezed.dart';

@freezed
class SearchResultArticleReference with _$SearchResultArticleReference {
  const factory SearchResultArticleReference({
    required List<String> path,
    required String title,
  }) = _SearchResultArticleReference;
}
