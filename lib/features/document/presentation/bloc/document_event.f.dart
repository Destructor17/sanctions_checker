part of 'document_bloc.f.dart';

@freezed
class DocumentEvent with _$DocumentEvent {
  const factory DocumentEvent.requested() = DocumentEventRequested;
}
