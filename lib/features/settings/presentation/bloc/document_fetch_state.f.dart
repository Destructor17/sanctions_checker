part of 'document_fetch_bloc.f.dart';

@freezed
class DocumentFetchState with _$DocumentFetchState {
  const factory DocumentFetchState.fetching() = DocumentFetchStateFetching;
  const factory DocumentFetchState.inital() = DocumentFetchStateInital;
  const factory DocumentFetchState.error() = DocumentFetchStateError;
  const factory DocumentFetchState.done() = DocumentFetchStateDone;
}
