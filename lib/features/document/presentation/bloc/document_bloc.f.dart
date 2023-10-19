import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanctions_checker/network/entity/document_dto.b.dart';
import 'package:sanctions_checker/services/document_storage_service.dart';
import 'package:sanctions_checker/services/service_locator.dart';

part 'document_bloc.f.freezed.dart';
part 'document_event.f.dart';
part 'document_state.f.dart';

class DocumentBloc extends Bloc<DocumentEvent, DocumentState> {
  DocumentBloc() : super(const DocumentState.loading()) {
    on<DocumentEventRequested>(
      _requested,
      transformer: restartable(),
    );
    add(const DocumentEvent.requested());
  }

  FutureOr<void> _requested(
    DocumentEventRequested event,
    Emitter<DocumentState> emit,
  ) async {
    final result = await sl.get<DocumentStorageService>().loadDocument();
    if (result.isLeft) {
      emit(const DocumentState.error());
      return;
    }
    emit(DocumentState.result(document: result.right));
  }
}
