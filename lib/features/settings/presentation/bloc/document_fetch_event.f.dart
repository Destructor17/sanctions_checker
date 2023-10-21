part of 'document_fetch_bloc.f.dart';

@freezed
class DocumentFetchEvent with _$DocumentFetchEvent {
  const factory DocumentFetchEvent.requested() = DocumentFetchEventRequested;
  const factory DocumentFetchEvent.pick() = DocumentFetchEventPick;
}
