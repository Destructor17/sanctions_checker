// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_article_reference.f.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchResultArticleReference {
  List<String> get path => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultArticleReferenceCopyWith<SearchResultArticleReference>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultArticleReferenceCopyWith<$Res> {
  factory $SearchResultArticleReferenceCopyWith(
          SearchResultArticleReference value,
          $Res Function(SearchResultArticleReference) then) =
      _$SearchResultArticleReferenceCopyWithImpl<$Res,
          SearchResultArticleReference>;
  @useResult
  $Res call({List<String> path, String title});
}

/// @nodoc
class _$SearchResultArticleReferenceCopyWithImpl<$Res,
        $Val extends SearchResultArticleReference>
    implements $SearchResultArticleReferenceCopyWith<$Res> {
  _$SearchResultArticleReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultArticleReferenceImplCopyWith<$Res>
    implements $SearchResultArticleReferenceCopyWith<$Res> {
  factory _$$SearchResultArticleReferenceImplCopyWith(
          _$SearchResultArticleReferenceImpl value,
          $Res Function(_$SearchResultArticleReferenceImpl) then) =
      __$$SearchResultArticleReferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> path, String title});
}

/// @nodoc
class __$$SearchResultArticleReferenceImplCopyWithImpl<$Res>
    extends _$SearchResultArticleReferenceCopyWithImpl<$Res,
        _$SearchResultArticleReferenceImpl>
    implements _$$SearchResultArticleReferenceImplCopyWith<$Res> {
  __$$SearchResultArticleReferenceImplCopyWithImpl(
      _$SearchResultArticleReferenceImpl _value,
      $Res Function(_$SearchResultArticleReferenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? title = null,
  }) {
    return _then(_$SearchResultArticleReferenceImpl(
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchResultArticleReferenceImpl
    implements _SearchResultArticleReference {
  const _$SearchResultArticleReferenceImpl(
      {required final List<String> path, required this.title})
      : _path = path;

  final List<String> _path;
  @override
  List<String> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  final String title;

  @override
  String toString() {
    return 'SearchResultArticleReference(path: $path, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultArticleReferenceImpl &&
            const DeepCollectionEquality().equals(other._path, _path) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_path), title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultArticleReferenceImplCopyWith<
          _$SearchResultArticleReferenceImpl>
      get copyWith => __$$SearchResultArticleReferenceImplCopyWithImpl<
          _$SearchResultArticleReferenceImpl>(this, _$identity);
}

abstract class _SearchResultArticleReference
    implements SearchResultArticleReference {
  const factory _SearchResultArticleReference(
      {required final List<String> path,
      required final String title}) = _$SearchResultArticleReferenceImpl;

  @override
  List<String> get path;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultArticleReferenceImplCopyWith<
          _$SearchResultArticleReferenceImpl>
      get copyWith => throw _privateConstructorUsedError;
}
