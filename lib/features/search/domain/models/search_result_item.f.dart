import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_item.f.freezed.dart';

@freezed
class SearchResultItem with _$SearchResultItem {
  const factory SearchResultItem({
    required String key,
    required String body,
  }) = _SearchResultItem;
}
