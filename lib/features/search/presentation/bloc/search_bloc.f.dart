import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanctions_checker/features/search/domain/search_result.f.dart';
import 'package:sanctions_checker/services/search_service.dart';
import 'package:sanctions_checker/services/service_locator.dart';

part 'search_bloc.f.freezed.dart';
part 'search_event.f.dart';
part 'search_state.f.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState.empty()) {
    on<SearchEventRequestedSearch>(
      _requested,
      transformer: restartable(),
    );
  }

  FutureOr<void> _requested(
    SearchEventRequestedSearch event,
    Emitter<SearchState> emit,
  ) async {
    emit(const SearchState.loading());
    final result =
        await sl.get<SearchService>().search(event.text, event.searchType);
    if (result.isLeft) {
      emit(const SearchState.error());
      return;
    }
    if (result.right.itemGroups.isEmpty) {
      emit(const SearchState.empty());
      return;
    }
    emit(SearchState.result(searchResult: result.right));
  }
}
