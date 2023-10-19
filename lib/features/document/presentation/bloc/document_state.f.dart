part of 'document_bloc.f.dart';

@freezed
sealed class DocumentState with _$DocumentState {
  const factory DocumentState.loading() = DocumentStateLoading;
  const factory DocumentState.error() = DocumentStateError;
  const factory DocumentState.result({required DocumentDTO document}) =
      DocumentStateResult;
}
