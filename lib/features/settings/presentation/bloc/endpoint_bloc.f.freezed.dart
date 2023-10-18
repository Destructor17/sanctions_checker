// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'endpoint_bloc.f.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EndpointEvent {
  String get text => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) changed,
    required TResult Function(String text) requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? changed,
    TResult? Function(String text)? requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? changed,
    TResult Function(String text)? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndpointEventChanged value) changed,
    required TResult Function(EndpointEventRequested value) requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndpointEventChanged value)? changed,
    TResult? Function(EndpointEventRequested value)? requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndpointEventChanged value)? changed,
    TResult Function(EndpointEventRequested value)? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EndpointEventCopyWith<EndpointEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndpointEventCopyWith<$Res> {
  factory $EndpointEventCopyWith(
          EndpointEvent value, $Res Function(EndpointEvent) then) =
      _$EndpointEventCopyWithImpl<$Res, EndpointEvent>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$EndpointEventCopyWithImpl<$Res, $Val extends EndpointEvent>
    implements $EndpointEventCopyWith<$Res> {
  _$EndpointEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EndpointEventChangedImplCopyWith<$Res>
    implements $EndpointEventCopyWith<$Res> {
  factory _$$EndpointEventChangedImplCopyWith(_$EndpointEventChangedImpl value,
          $Res Function(_$EndpointEventChangedImpl) then) =
      __$$EndpointEventChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$EndpointEventChangedImplCopyWithImpl<$Res>
    extends _$EndpointEventCopyWithImpl<$Res, _$EndpointEventChangedImpl>
    implements _$$EndpointEventChangedImplCopyWith<$Res> {
  __$$EndpointEventChangedImplCopyWithImpl(_$EndpointEventChangedImpl _value,
      $Res Function(_$EndpointEventChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$EndpointEventChangedImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EndpointEventChangedImpl implements EndpointEventChanged {
  const _$EndpointEventChangedImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'EndpointEvent.changed(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndpointEventChangedImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndpointEventChangedImplCopyWith<_$EndpointEventChangedImpl>
      get copyWith =>
          __$$EndpointEventChangedImplCopyWithImpl<_$EndpointEventChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) changed,
    required TResult Function(String text) requested,
  }) {
    return changed(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? changed,
    TResult? Function(String text)? requested,
  }) {
    return changed?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? changed,
    TResult Function(String text)? requested,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndpointEventChanged value) changed,
    required TResult Function(EndpointEventRequested value) requested,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndpointEventChanged value)? changed,
    TResult? Function(EndpointEventRequested value)? requested,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndpointEventChanged value)? changed,
    TResult Function(EndpointEventRequested value)? requested,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class EndpointEventChanged implements EndpointEvent {
  const factory EndpointEventChanged(final String text) =
      _$EndpointEventChangedImpl;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$EndpointEventChangedImplCopyWith<_$EndpointEventChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndpointEventRequestedImplCopyWith<$Res>
    implements $EndpointEventCopyWith<$Res> {
  factory _$$EndpointEventRequestedImplCopyWith(
          _$EndpointEventRequestedImpl value,
          $Res Function(_$EndpointEventRequestedImpl) then) =
      __$$EndpointEventRequestedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$EndpointEventRequestedImplCopyWithImpl<$Res>
    extends _$EndpointEventCopyWithImpl<$Res, _$EndpointEventRequestedImpl>
    implements _$$EndpointEventRequestedImplCopyWith<$Res> {
  __$$EndpointEventRequestedImplCopyWithImpl(
      _$EndpointEventRequestedImpl _value,
      $Res Function(_$EndpointEventRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$EndpointEventRequestedImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EndpointEventRequestedImpl implements EndpointEventRequested {
  const _$EndpointEventRequestedImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'EndpointEvent.requested(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndpointEventRequestedImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndpointEventRequestedImplCopyWith<_$EndpointEventRequestedImpl>
      get copyWith => __$$EndpointEventRequestedImplCopyWithImpl<
          _$EndpointEventRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) changed,
    required TResult Function(String text) requested,
  }) {
    return requested(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? changed,
    TResult? Function(String text)? requested,
  }) {
    return requested?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? changed,
    TResult Function(String text)? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndpointEventChanged value) changed,
    required TResult Function(EndpointEventRequested value) requested,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndpointEventChanged value)? changed,
    TResult? Function(EndpointEventRequested value)? requested,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndpointEventChanged value)? changed,
    TResult Function(EndpointEventRequested value)? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class EndpointEventRequested implements EndpointEvent {
  const factory EndpointEventRequested(final String text) =
      _$EndpointEventRequestedImpl;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$EndpointEventRequestedImplCopyWith<_$EndpointEventRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EndpointState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function()? loading,
    TResult? Function()? valid,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndpointStateWaiting value) waiting,
    required TResult Function(EndpointStateLoading value) loading,
    required TResult Function(EndpointStateValid value) valid,
    required TResult Function(EndpointStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndpointStateWaiting value)? waiting,
    TResult? Function(EndpointStateLoading value)? loading,
    TResult? Function(EndpointStateValid value)? valid,
    TResult? Function(EndpointStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndpointStateWaiting value)? waiting,
    TResult Function(EndpointStateLoading value)? loading,
    TResult Function(EndpointStateValid value)? valid,
    TResult Function(EndpointStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndpointStateCopyWith<$Res> {
  factory $EndpointStateCopyWith(
          EndpointState value, $Res Function(EndpointState) then) =
      _$EndpointStateCopyWithImpl<$Res, EndpointState>;
}

/// @nodoc
class _$EndpointStateCopyWithImpl<$Res, $Val extends EndpointState>
    implements $EndpointStateCopyWith<$Res> {
  _$EndpointStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EndpointStateWaitingImplCopyWith<$Res> {
  factory _$$EndpointStateWaitingImplCopyWith(_$EndpointStateWaitingImpl value,
          $Res Function(_$EndpointStateWaitingImpl) then) =
      __$$EndpointStateWaitingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndpointStateWaitingImplCopyWithImpl<$Res>
    extends _$EndpointStateCopyWithImpl<$Res, _$EndpointStateWaitingImpl>
    implements _$$EndpointStateWaitingImplCopyWith<$Res> {
  __$$EndpointStateWaitingImplCopyWithImpl(_$EndpointStateWaitingImpl _value,
      $Res Function(_$EndpointStateWaitingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EndpointStateWaitingImpl implements EndpointStateWaiting {
  const _$EndpointStateWaitingImpl();

  @override
  String toString() {
    return 'EndpointState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndpointStateWaitingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() error,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function()? loading,
    TResult? Function()? valid,
    TResult? Function()? error,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndpointStateWaiting value) waiting,
    required TResult Function(EndpointStateLoading value) loading,
    required TResult Function(EndpointStateValid value) valid,
    required TResult Function(EndpointStateError value) error,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndpointStateWaiting value)? waiting,
    TResult? Function(EndpointStateLoading value)? loading,
    TResult? Function(EndpointStateValid value)? valid,
    TResult? Function(EndpointStateError value)? error,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndpointStateWaiting value)? waiting,
    TResult Function(EndpointStateLoading value)? loading,
    TResult Function(EndpointStateValid value)? valid,
    TResult Function(EndpointStateError value)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class EndpointStateWaiting implements EndpointState {
  const factory EndpointStateWaiting() = _$EndpointStateWaitingImpl;
}

/// @nodoc
abstract class _$$EndpointStateLoadingImplCopyWith<$Res> {
  factory _$$EndpointStateLoadingImplCopyWith(_$EndpointStateLoadingImpl value,
          $Res Function(_$EndpointStateLoadingImpl) then) =
      __$$EndpointStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndpointStateLoadingImplCopyWithImpl<$Res>
    extends _$EndpointStateCopyWithImpl<$Res, _$EndpointStateLoadingImpl>
    implements _$$EndpointStateLoadingImplCopyWith<$Res> {
  __$$EndpointStateLoadingImplCopyWithImpl(_$EndpointStateLoadingImpl _value,
      $Res Function(_$EndpointStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EndpointStateLoadingImpl implements EndpointStateLoading {
  const _$EndpointStateLoadingImpl();

  @override
  String toString() {
    return 'EndpointState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndpointStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function()? loading,
    TResult? Function()? valid,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? error,
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
    required TResult Function(EndpointStateWaiting value) waiting,
    required TResult Function(EndpointStateLoading value) loading,
    required TResult Function(EndpointStateValid value) valid,
    required TResult Function(EndpointStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndpointStateWaiting value)? waiting,
    TResult? Function(EndpointStateLoading value)? loading,
    TResult? Function(EndpointStateValid value)? valid,
    TResult? Function(EndpointStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndpointStateWaiting value)? waiting,
    TResult Function(EndpointStateLoading value)? loading,
    TResult Function(EndpointStateValid value)? valid,
    TResult Function(EndpointStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EndpointStateLoading implements EndpointState {
  const factory EndpointStateLoading() = _$EndpointStateLoadingImpl;
}

/// @nodoc
abstract class _$$EndpointStateValidImplCopyWith<$Res> {
  factory _$$EndpointStateValidImplCopyWith(_$EndpointStateValidImpl value,
          $Res Function(_$EndpointStateValidImpl) then) =
      __$$EndpointStateValidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndpointStateValidImplCopyWithImpl<$Res>
    extends _$EndpointStateCopyWithImpl<$Res, _$EndpointStateValidImpl>
    implements _$$EndpointStateValidImplCopyWith<$Res> {
  __$$EndpointStateValidImplCopyWithImpl(_$EndpointStateValidImpl _value,
      $Res Function(_$EndpointStateValidImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EndpointStateValidImpl implements EndpointStateValid {
  const _$EndpointStateValidImpl();

  @override
  String toString() {
    return 'EndpointState.valid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EndpointStateValidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() error,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function()? loading,
    TResult? Function()? valid,
    TResult? Function()? error,
  }) {
    return valid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndpointStateWaiting value) waiting,
    required TResult Function(EndpointStateLoading value) loading,
    required TResult Function(EndpointStateValid value) valid,
    required TResult Function(EndpointStateError value) error,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndpointStateWaiting value)? waiting,
    TResult? Function(EndpointStateLoading value)? loading,
    TResult? Function(EndpointStateValid value)? valid,
    TResult? Function(EndpointStateError value)? error,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndpointStateWaiting value)? waiting,
    TResult Function(EndpointStateLoading value)? loading,
    TResult Function(EndpointStateValid value)? valid,
    TResult Function(EndpointStateError value)? error,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class EndpointStateValid implements EndpointState {
  const factory EndpointStateValid() = _$EndpointStateValidImpl;
}

/// @nodoc
abstract class _$$EndpointStateErrorImplCopyWith<$Res> {
  factory _$$EndpointStateErrorImplCopyWith(_$EndpointStateErrorImpl value,
          $Res Function(_$EndpointStateErrorImpl) then) =
      __$$EndpointStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndpointStateErrorImplCopyWithImpl<$Res>
    extends _$EndpointStateCopyWithImpl<$Res, _$EndpointStateErrorImpl>
    implements _$$EndpointStateErrorImplCopyWith<$Res> {
  __$$EndpointStateErrorImplCopyWithImpl(_$EndpointStateErrorImpl _value,
      $Res Function(_$EndpointStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EndpointStateErrorImpl implements EndpointStateError {
  const _$EndpointStateErrorImpl();

  @override
  String toString() {
    return 'EndpointState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EndpointStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function()? loading,
    TResult? Function()? valid,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? error,
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
    required TResult Function(EndpointStateWaiting value) waiting,
    required TResult Function(EndpointStateLoading value) loading,
    required TResult Function(EndpointStateValid value) valid,
    required TResult Function(EndpointStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndpointStateWaiting value)? waiting,
    TResult? Function(EndpointStateLoading value)? loading,
    TResult? Function(EndpointStateValid value)? valid,
    TResult? Function(EndpointStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndpointStateWaiting value)? waiting,
    TResult Function(EndpointStateLoading value)? loading,
    TResult Function(EndpointStateValid value)? valid,
    TResult Function(EndpointStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EndpointStateError implements EndpointState {
  const factory EndpointStateError() = _$EndpointStateErrorImpl;
}
