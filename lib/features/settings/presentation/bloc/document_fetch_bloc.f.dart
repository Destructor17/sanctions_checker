import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanctions_checker/features/document/domain/services/document_storage_service.dart';
import 'package:sanctions_checker/services/netowrk_service.dart';
import 'package:sanctions_checker/services/service_locator.dart';

part 'document_fetch_bloc.f.freezed.dart';
part 'document_fetch_event.f.dart';
part 'document_fetch_state.f.dart';

class DocumentFetchBloc extends Bloc<DocumentFetchEvent, DocumentFetchState> {
  DocumentFetchBloc() : super(const DocumentFetchState.inital()) {
    on<DocumentFetchEventRequested>(_requested);
  }

  FutureOr<void> _requested(
    DocumentFetchEventRequested event,
    Emitter<DocumentFetchState> emit,
  ) async {
    emit(const DocumentFetchState.fetching());
    final result = await sl.get<NetworkService>().get();
    if (result.isLeft) {
      emit(const DocumentFetchState.error());
      return;
    }
    final document = result.right;
    await sl.get<DocumentStorageService>().saveDocument(document);
    emit(const DocumentFetchState.done());
  }
}
