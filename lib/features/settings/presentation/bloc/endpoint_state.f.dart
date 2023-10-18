part of 'endpoint_bloc.f.dart';

@freezed
class EndpointState with _$EndpointState {
  const factory EndpointState.waiting() = EndpointStateWaiting;
  const factory EndpointState.loading() = EndpointStateLoading;
  const factory EndpointState.valid() = EndpointStateValid;
  const factory EndpointState.error() = EndpointStateError;
}
