import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanctions_checker/features/search/domain/search_result_article_reference.f.dart';
import 'package:sanctions_checker/features/search/domain/search_result_item.f.dart';

part 'search_result_item_group.f.freezed.dart';

@freezed
class SearchResultItemGroup with _$SearchResultItemGroup {
  const factory SearchResultItemGroup({
    required List<SearchResultArticleReference> articleReferences,
    required List<SearchResultItem> items,
  }) = _SearchResultItemGroup;
}
