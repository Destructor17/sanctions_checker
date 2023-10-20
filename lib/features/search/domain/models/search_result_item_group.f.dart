import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanctions_checker/features/article/domain/models/article_reference.f.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result_item.f.dart';

part 'search_result_item_group.f.freezed.dart';

@freezed
class SearchResultItemGroup with _$SearchResultItemGroup {
  const factory SearchResultItemGroup({
    required List<ArticleReference> articleReferences,
    required List<SearchResultItem> items,
  }) = _SearchResultItemGroup;
}
