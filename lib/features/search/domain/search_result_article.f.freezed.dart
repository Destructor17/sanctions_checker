// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_article.f.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchResultArticle {
  String get pathPart => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  SearchResultArticle? get parent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultArticleCopyWith<SearchResultArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultArticleCopyWith<$Res> {
  factory $SearchResultArticleCopyWith(
          SearchResultArticle value, $Res Function(SearchResultArticle) then) =
      _$SearchResultArticleCopyWithImpl<$Res, SearchResultArticle>;
  @useResult
  $Res call({String pathPart, String title, SearchResultArticle? parent});

  $SearchResultArticleCopyWith<$Res>? get parent;
}

/// @nodoc
class _$SearchResultArticleCopyWithImpl<$Res, $Val extends SearchResultArticle>
    implements $SearchResultArticleCopyWith<$Res> {
  _$SearchResultArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pathPart = null,
    Object? title = null,
    Object? parent = freezed,
  }) {
    return _then(_value.copyWith(
      pathPart: null == pathPart
          ? _value.pathPart
          : pathPart // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as SearchResultArticle?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchResultArticleCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $SearchResultArticleCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchResultArticleImplCopyWith<$Res>
    implements $SearchResultArticleCopyWith<$Res> {
  factory _$$SearchResultArticleImplCopyWith(_$SearchResultArticleImpl value,
          $Res Function(_$SearchResultArticleImpl) then) =
      __$$SearchResultArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pathPart, String title, SearchResultArticle? parent});

  @override
  $SearchResultArticleCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$SearchResultArticleImplCopyWithImpl<$Res>
    extends _$SearchResultArticleCopyWithImpl<$Res, _$SearchResultArticleImpl>
    implements _$$SearchResultArticleImplCopyWith<$Res> {
  __$$SearchResultArticleImplCopyWithImpl(_$SearchResultArticleImpl _value,
      $Res Function(_$SearchResultArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pathPart = null,
    Object? title = null,
    Object? parent = freezed,
  }) {
    return _then(_$SearchResultArticleImpl(
      pathPart: null == pathPart
          ? _value.pathPart
          : pathPart // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as SearchResultArticle?,
    ));
  }
}

/// @nodoc

class _$SearchResultArticleImpl implements _SearchResultArticle {
  const _$SearchResultArticleImpl(
      {required this.pathPart, required this.title, required this.parent});

  @override
  final String pathPart;
  @override
  final String title;
  @override
  final SearchResultArticle? parent;

  @override
  String toString() {
    return 'SearchResultArticle(pathPart: $pathPart, title: $title, parent: $parent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultArticleImpl &&
            (identical(other.pathPart, pathPart) ||
                other.pathPart == pathPart) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pathPart, title, parent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultArticleImplCopyWith<_$SearchResultArticleImpl> get copyWith =>
      __$$SearchResultArticleImplCopyWithImpl<_$SearchResultArticleImpl>(
          this, _$identity);
}

abstract class _SearchResultArticle implements SearchResultArticle {
  const factory _SearchResultArticle(
      {required final String pathPart,
      required final String title,
      required final SearchResultArticle? parent}) = _$SearchResultArticleImpl;

  @override
  String get pathPart;
  @override
  String get title;
  @override
  SearchResultArticle? get parent;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultArticleImplCopyWith<_$SearchResultArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
