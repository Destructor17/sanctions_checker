import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanctions_checker/features/document/domain/services/document_storage_service.dart';
import 'package:sanctions_checker/features/settings/domain/services/endpoint_service.dart';
import 'package:sanctions_checker/network/services/netowrk_service.dart';
import 'package:sanctions_checker/services/service_locator.dart';

part 'endpoint_bloc.f.freezed.dart';
part 'endpoint_event.f.dart';
part 'endpoint_state.f.dart';

class EndpointBloc extends Bloc<EndpointEvent, EndpointState> {
  EndpointBloc() : super(const EndpointState.error()) {
    on<EndpointEventChanged>(_changed, transformer: restartable());
    on<EndpointEventRequested>(_requested, transformer: restartable());
  }

  FutureOr<void> _changed(
    EndpointEventChanged event,
    Emitter<EndpointState> emit,
  ) async {
    emit(const EndpointState.waiting());
    await Future.delayed(const Duration(seconds: 1));
    if (!emit.isDone) {
      add(EndpointEvent.requested(event.text));
    }
  }

  FutureOr<void> _requested(
    EndpointEventRequested event,
    Emitter<EndpointState> emit,
  ) async {
    await sl.get<EndpointService>().setEndpoint(event.text);
    final result = await sl.get<NetworkService>().get();
    result.fold(
      (left) {
        emit(const EndpointState.error());
      },
      (right) {
        emit(const EndpointState.valid());

        sl.get<DocumentStorageService>().saveDocument(right);
      },
    );
  }
}
