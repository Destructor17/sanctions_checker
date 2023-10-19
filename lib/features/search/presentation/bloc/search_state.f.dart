part of 'search_bloc.f.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.empty() = SearchStateEmpty;
  const factory SearchState.loading() = SearchStateLoading;
  const factory SearchState.result({required SearchResult searchResult}) =
      SearchStateResult;
  const factory SearchState.error() = SearchStateError;
}
