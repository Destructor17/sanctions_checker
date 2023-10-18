part of 'endpoint_bloc.f.dart';

@freezed
class EndpointEvent with _$EndpointEvent {
  const factory EndpointEvent.changed(String text) = EndpointEventChanged;
  const factory EndpointEvent.requested(String text) = EndpointEventRequested;
}
