import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_article.f.freezed.dart';

@freezed
class SearchResultArticle with _$SearchResultArticle {
  const factory SearchResultArticle({
    required String pathPart,
    required String title,
    required SearchResultArticle? parent,
  }) = _SearchResultArticle;
}

extension SearchResultArticleDipth on SearchResultArticle {
  int depth() => parent == null ? 0 : parent!.depth() + 1;
}
