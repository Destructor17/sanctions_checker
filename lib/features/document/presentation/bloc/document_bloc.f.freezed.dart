// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_bloc.f.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentEventRequested value) requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DocumentEventRequested value)? requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentEventRequested value)? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentEventCopyWith<$Res> {
  factory $DocumentEventCopyWith(
          DocumentEvent value, $Res Function(DocumentEvent) then) =
      _$DocumentEventCopyWithImpl<$Res, DocumentEvent>;
}

/// @nodoc
class _$DocumentEventCopyWithImpl<$Res, $Val extends DocumentEvent>
    implements $DocumentEventCopyWith<$Res> {
  _$DocumentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DocumentEventRequestedImplCopyWith<$Res> {
  factory _$$DocumentEventRequestedImplCopyWith(
          _$DocumentEventRequestedImpl value,
          $Res Function(_$DocumentEventRequestedImpl) then) =
      __$$DocumentEventRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DocumentEventRequestedImplCopyWithImpl<$Res>
    extends _$DocumentEventCopyWithImpl<$Res, _$DocumentEventRequestedImpl>
    implements _$$DocumentEventRequestedImplCopyWith<$Res> {
  __$$DocumentEventRequestedImplCopyWithImpl(
      _$DocumentEventRequestedImpl _value,
      $Res Function(_$DocumentEventRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DocumentEventRequestedImpl implements DocumentEventRequested {
  const _$DocumentEventRequestedImpl();

  @override
  String toString() {
    return 'DocumentEvent.requested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentEventRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
  }) {
    return requested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
  }) {
    return requested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentEventRequested value) requested,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DocumentEventRequested value)? requested,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentEventRequested value)? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class DocumentEventRequested implements DocumentEvent {
  const factory DocumentEventRequested() = _$DocumentEventRequestedImpl;
}

/// @nodoc
mixin _$DocumentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(DocumentDTO document) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(DocumentDTO document)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(DocumentDTO document)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentStateLoading value) loading,
    required TResult Function(DocumentStateError value) error,
    required TResult Function(DocumentStateResult value) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DocumentStateLoading value)? loading,
    TResult? Function(DocumentStateError value)? error,
    TResult? Function(DocumentStateResult value)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentStateLoading value)? loading,
    TResult Function(DocumentStateError value)? error,
    TResult Function(DocumentStateResult value)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentStateCopyWith<$Res> {
  factory $DocumentStateCopyWith(
          DocumentState value, $Res Function(DocumentState) then) =
      _$DocumentStateCopyWithImpl<$Res, DocumentState>;
}

/// @nodoc
class _$DocumentStateCopyWithImpl<$Res, $Val extends DocumentState>
    implements $DocumentStateCopyWith<$Res> {
  _$DocumentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DocumentStateLoadingImplCopyWith<$Res> {
  factory _$$DocumentStateLoadingImplCopyWith(_$DocumentStateLoadingImpl value,
          $Res Function(_$DocumentStateLoadingImpl) then) =
      __$$DocumentStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DocumentStateLoadingImplCopyWithImpl<$Res>
    extends _$DocumentStateCopyWithImpl<$Res, _$DocumentStateLoadingImpl>
    implements _$$DocumentStateLoadingImplCopyWith<$Res> {
  __$$DocumentStateLoadingImplCopyWithImpl(_$DocumentStateLoadingImpl _value,
      $Res Function(_$DocumentStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DocumentStateLoadingImpl implements DocumentStateLoading {
  const _$DocumentStateLoadingImpl();

  @override
  String toString() {
    return 'DocumentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(DocumentDTO document) result,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(DocumentDTO document)? result,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(DocumentDTO document)? result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentStateLoading value) loading,
    required TResult Function(DocumentStateError value) error,
    required TResult Function(DocumentStateResult value) result,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DocumentStateLoading value)? loading,
    TResult? Function(DocumentStateError value)? error,
    TResult? Function(DocumentStateResult value)? result,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentStateLoading value)? loading,
    TResult Function(DocumentStateError value)? error,
    TResult Function(DocumentStateResult value)? result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DocumentStateLoading implements DocumentState {
  const factory DocumentStateLoading() = _$DocumentStateLoadingImpl;
}

/// @nodoc
abstract class _$$DocumentStateErrorImplCopyWith<$Res> {
  factory _$$DocumentStateErrorImplCopyWith(_$DocumentStateErrorImpl value,
          $Res Function(_$DocumentStateErrorImpl) then) =
      __$$DocumentStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DocumentStateErrorImplCopyWithImpl<$Res>
    extends _$DocumentStateCopyWithImpl<$Res, _$DocumentStateErrorImpl>
    implements _$$DocumentStateErrorImplCopyWith<$Res> {
  __$$DocumentStateErrorImplCopyWithImpl(_$DocumentStateErrorImpl _value,
      $Res Function(_$DocumentStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DocumentStateErrorImpl implements DocumentStateError {
  const _$DocumentStateErrorImpl();

  @override
  String toString() {
    return 'DocumentState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DocumentStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(DocumentDTO document) result,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(DocumentDTO document)? result,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(DocumentDTO document)? result,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentStateLoading value) loading,
    required TResult Function(DocumentStateError value) error,
    required TResult Function(DocumentStateResult value) result,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DocumentStateLoading value)? loading,
    TResult? Function(DocumentStateError value)? error,
    TResult? Function(DocumentStateResult value)? result,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentStateLoading value)? loading,
    TResult Function(DocumentStateError value)? error,
    TResult Function(DocumentStateResult value)? result,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DocumentStateError implements DocumentState {
  const factory DocumentStateError() = _$DocumentStateErrorImpl;
}

/// @nodoc
abstract class _$$DocumentStateResultImplCopyWith<$Res> {
  factory _$$DocumentStateResultImplCopyWith(_$DocumentStateResultImpl value,
          $Res Function(_$DocumentStateResultImpl) then) =
      __$$DocumentStateResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentDTO document});
}

/// @nodoc
class __$$DocumentStateResultImplCopyWithImpl<$Res>
    extends _$DocumentStateCopyWithImpl<$Res, _$DocumentStateResultImpl>
    implements _$$DocumentStateResultImplCopyWith<$Res> {
  __$$DocumentStateResultImplCopyWithImpl(_$DocumentStateResultImpl _value,
      $Res Function(_$DocumentStateResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$DocumentStateResultImpl(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as DocumentDTO,
    ));
  }
}

/// @nodoc

class _$DocumentStateResultImpl implements DocumentStateResult {
  const _$DocumentStateResultImpl({required this.document});

  @override
  final DocumentDTO document;

  @override
  String toString() {
    return 'DocumentState.result(document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentStateResultImpl &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @override
  int get hashCode => Object.hash(runtimeType, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentStateResultImplCopyWith<_$DocumentStateResultImpl> get copyWith =>
      __$$DocumentStateResultImplCopyWithImpl<_$DocumentStateResultImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(DocumentDTO document) result,
  }) {
    return result(document);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(DocumentDTO document)? result,
  }) {
    return result?.call(document);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(DocumentDTO document)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(document);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentStateLoading value) loading,
    required TResult Function(DocumentStateError value) error,
    required TResult Function(DocumentStateResult value) result,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DocumentStateLoading value)? loading,
    TResult? Function(DocumentStateError value)? error,
    TResult? Function(DocumentStateResult value)? result,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentStateLoading value)? loading,
    TResult Function(DocumentStateError value)? error,
    TResult Function(DocumentStateResult value)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class DocumentStateResult implements DocumentState {
  const factory DocumentStateResult({required final DocumentDTO document}) =
      _$DocumentStateResultImpl;

  DocumentDTO get document;
  @JsonKey(ignore: true)
  _$$DocumentStateResultImplCopyWith<_$DocumentStateResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
