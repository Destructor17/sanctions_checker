part of 'search_bloc.f.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.requestedSearch(
    String text,
    DocumentSearchType searchType,
  ) = SearchEventRequestedSearch;
}
