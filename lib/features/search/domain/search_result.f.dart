import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanctions_checker/features/search/domain/search_result_item_group.f.dart';

part 'search_result.f.freezed.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    required List<SearchResultItemGroup> itemGroups,
  }) = _SearchResult;
}
