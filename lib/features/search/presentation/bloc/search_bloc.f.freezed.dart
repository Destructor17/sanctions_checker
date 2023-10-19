// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.f.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  String get text => throw _privateConstructorUsedError;
  DocumentSearchType get searchType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, DocumentSearchType searchType)
        requestedSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, DocumentSearchType searchType)?
        requestedSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, DocumentSearchType searchType)?
        requestedSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchEventRequestedSearch value) requestedSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchEventRequestedSearch value)? requestedSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchEventRequestedSearch value)? requestedSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
  @useResult
  $Res call({String text, DocumentSearchType searchType});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? searchType = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as DocumentSearchType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchEventRequestedSearchImplCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$SearchEventRequestedSearchImplCopyWith(
          _$SearchEventRequestedSearchImpl value,
          $Res Function(_$SearchEventRequestedSearchImpl) then) =
      __$$SearchEventRequestedSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, DocumentSearchType searchType});
}

/// @nodoc
class __$$SearchEventRequestedSearchImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchEventRequestedSearchImpl>
    implements _$$SearchEventRequestedSearchImplCopyWith<$Res> {
  __$$SearchEventRequestedSearchImplCopyWithImpl(
      _$SearchEventRequestedSearchImpl _value,
      $Res Function(_$SearchEventRequestedSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? searchType = null,
  }) {
    return _then(_$SearchEventRequestedSearchImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as DocumentSearchType,
    ));
  }
}

/// @nodoc

class _$SearchEventRequestedSearchImpl implements SearchEventRequestedSearch {
  const _$SearchEventRequestedSearchImpl(this.text, this.searchType);

  @override
  final String text;
  @override
  final DocumentSearchType searchType;

  @override
  String toString() {
    return 'SearchEvent.requestedSearch(text: $text, searchType: $searchType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventRequestedSearchImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, searchType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEventRequestedSearchImplCopyWith<_$SearchEventRequestedSearchImpl>
      get copyWith => __$$SearchEventRequestedSearchImplCopyWithImpl<
          _$SearchEventRequestedSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, DocumentSearchType searchType)
        requestedSearch,
  }) {
    return requestedSearch(text, searchType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, DocumentSearchType searchType)?
        requestedSearch,
  }) {
    return requestedSearch?.call(text, searchType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, DocumentSearchType searchType)?
        requestedSearch,
    required TResult orElse(),
  }) {
    if (requestedSearch != null) {
      return requestedSearch(text, searchType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchEventRequestedSearch value) requestedSearch,
  }) {
    return requestedSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchEventRequestedSearch value)? requestedSearch,
  }) {
    return requestedSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchEventRequestedSearch value)? requestedSearch,
    required TResult orElse(),
  }) {
    if (requestedSearch != null) {
      return requestedSearch(this);
    }
    return orElse();
  }
}

abstract class SearchEventRequestedSearch implements SearchEvent {
  const factory SearchEventRequestedSearch(
          final String text, final DocumentSearchType searchType) =
      _$SearchEventRequestedSearchImpl;

  @override
  String get text;
  @override
  DocumentSearchType get searchType;
  @override
  @JsonKey(ignore: true)
  _$$SearchEventRequestedSearchImplCopyWith<_$SearchEventRequestedSearchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(SearchResult searchResult) result,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(SearchResult searchResult)? result,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(SearchResult searchResult)? result,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStateEmpty value) empty,
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateResult value) result,
    required TResult Function(SearchStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchStateEmpty value)? empty,
    TResult? Function(SearchStateLoading value)? loading,
    TResult? Function(SearchStateResult value)? result,
    TResult? Function(SearchStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStateEmpty value)? empty,
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateResult value)? result,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchStateEmptyImplCopyWith<$Res> {
  factory _$$SearchStateEmptyImplCopyWith(_$SearchStateEmptyImpl value,
          $Res Function(_$SearchStateEmptyImpl) then) =
      __$$SearchStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchStateEmptyImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateEmptyImpl>
    implements _$$SearchStateEmptyImplCopyWith<$Res> {
  __$$SearchStateEmptyImplCopyWithImpl(_$SearchStateEmptyImpl _value,
      $Res Function(_$SearchStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchStateEmptyImpl implements SearchStateEmpty {
  const _$SearchStateEmptyImpl();

  @override
  String toString() {
    return 'SearchState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(SearchResult searchResult) result,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(SearchResult searchResult)? result,
    TResult? Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(SearchResult searchResult)? result,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStateEmpty value) empty,
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateResult value) result,
    required TResult Function(SearchStateError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchStateEmpty value)? empty,
    TResult? Function(SearchStateLoading value)? loading,
    TResult? Function(SearchStateResult value)? result,
    TResult? Function(SearchStateError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStateEmpty value)? empty,
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateResult value)? result,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class SearchStateEmpty implements SearchState {
  const factory SearchStateEmpty() = _$SearchStateEmptyImpl;
}

/// @nodoc
abstract class _$$SearchStateLoadingImplCopyWith<$Res> {
  factory _$$SearchStateLoadingImplCopyWith(_$SearchStateLoadingImpl value,
          $Res Function(_$SearchStateLoadingImpl) then) =
      __$$SearchStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchStateLoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateLoadingImpl>
    implements _$$SearchStateLoadingImplCopyWith<$Res> {
  __$$SearchStateLoadingImplCopyWithImpl(_$SearchStateLoadingImpl _value,
      $Res Function(_$SearchStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchStateLoadingImpl implements SearchStateLoading {
  const _$SearchStateLoadingImpl();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(SearchResult searchResult) result,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(SearchResult searchResult)? result,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(SearchResult searchResult)? result,
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
    required TResult Function(SearchStateEmpty value) empty,
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateResult value) result,
    required TResult Function(SearchStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchStateEmpty value)? empty,
    TResult? Function(SearchStateLoading value)? loading,
    TResult? Function(SearchStateResult value)? result,
    TResult? Function(SearchStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStateEmpty value)? empty,
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateResult value)? result,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchStateLoading implements SearchState {
  const factory SearchStateLoading() = _$SearchStateLoadingImpl;
}

/// @nodoc
abstract class _$$SearchStateResultImplCopyWith<$Res> {
  factory _$$SearchStateResultImplCopyWith(_$SearchStateResultImpl value,
          $Res Function(_$SearchStateResultImpl) then) =
      __$$SearchStateResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchResult searchResult});

  $SearchResultCopyWith<$Res> get searchResult;
}

/// @nodoc
class __$$SearchStateResultImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateResultImpl>
    implements _$$SearchStateResultImplCopyWith<$Res> {
  __$$SearchStateResultImplCopyWithImpl(_$SearchStateResultImpl _value,
      $Res Function(_$SearchStateResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
  }) {
    return _then(_$SearchStateResultImpl(
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchResult,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchResultCopyWith<$Res> get searchResult {
    return $SearchResultCopyWith<$Res>(_value.searchResult, (value) {
      return _then(_value.copyWith(searchResult: value));
    });
  }
}

/// @nodoc

class _$SearchStateResultImpl implements SearchStateResult {
  const _$SearchStateResultImpl({required this.searchResult});

  @override
  final SearchResult searchResult;

  @override
  String toString() {
    return 'SearchState.result(searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateResultImpl &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateResultImplCopyWith<_$SearchStateResultImpl> get copyWith =>
      __$$SearchStateResultImplCopyWithImpl<_$SearchStateResultImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(SearchResult searchResult) result,
    required TResult Function() error,
  }) {
    return result(searchResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(SearchResult searchResult)? result,
    TResult? Function()? error,
  }) {
    return result?.call(searchResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(SearchResult searchResult)? result,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(searchResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStateEmpty value) empty,
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateResult value) result,
    required TResult Function(SearchStateError value) error,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchStateEmpty value)? empty,
    TResult? Function(SearchStateLoading value)? loading,
    TResult? Function(SearchStateResult value)? result,
    TResult? Function(SearchStateError value)? error,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStateEmpty value)? empty,
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateResult value)? result,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class SearchStateResult implements SearchState {
  const factory SearchStateResult({required final SearchResult searchResult}) =
      _$SearchStateResultImpl;

  SearchResult get searchResult;
  @JsonKey(ignore: true)
  _$$SearchStateResultImplCopyWith<_$SearchStateResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchStateErrorImplCopyWith<$Res> {
  factory _$$SearchStateErrorImplCopyWith(_$SearchStateErrorImpl value,
          $Res Function(_$SearchStateErrorImpl) then) =
      __$$SearchStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchStateErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateErrorImpl>
    implements _$$SearchStateErrorImplCopyWith<$Res> {
  __$$SearchStateErrorImplCopyWithImpl(_$SearchStateErrorImpl _value,
      $Res Function(_$SearchStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchStateErrorImpl implements SearchStateError {
  const _$SearchStateErrorImpl();

  @override
  String toString() {
    return 'SearchState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(SearchResult searchResult) result,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(SearchResult searchResult)? result,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(SearchResult searchResult)? result,
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
    required TResult Function(SearchStateEmpty value) empty,
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateResult value) result,
    required TResult Function(SearchStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchStateEmpty value)? empty,
    TResult? Function(SearchStateLoading value)? loading,
    TResult? Function(SearchStateResult value)? result,
    TResult? Function(SearchStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStateEmpty value)? empty,
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateResult value)? result,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchStateError implements SearchState {
  const factory SearchStateError() = _$SearchStateErrorImpl;
}
