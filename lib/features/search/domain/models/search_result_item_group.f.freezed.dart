// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_item_group.f.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchResultItemGroup {
  List<ArticleReference> get articleReferences =>
      throw _privateConstructorUsedError;
  List<SearchResultItem> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultItemGroupCopyWith<SearchResultItemGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultItemGroupCopyWith<$Res> {
  factory $SearchResultItemGroupCopyWith(SearchResultItemGroup value,
          $Res Function(SearchResultItemGroup) then) =
      _$SearchResultItemGroupCopyWithImpl<$Res, SearchResultItemGroup>;
  @useResult
  $Res call(
      {List<ArticleReference> articleReferences, List<SearchResultItem> items});
}

/// @nodoc
class _$SearchResultItemGroupCopyWithImpl<$Res,
        $Val extends SearchResultItemGroup>
    implements $SearchResultItemGroupCopyWith<$Res> {
  _$SearchResultItemGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleReferences = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      articleReferences: null == articleReferences
          ? _value.articleReferences
          : articleReferences // ignore: cast_nullable_to_non_nullable
              as List<ArticleReference>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultItemGroupImplCopyWith<$Res>
    implements $SearchResultItemGroupCopyWith<$Res> {
  factory _$$SearchResultItemGroupImplCopyWith(
          _$SearchResultItemGroupImpl value,
          $Res Function(_$SearchResultItemGroupImpl) then) =
      __$$SearchResultItemGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ArticleReference> articleReferences, List<SearchResultItem> items});
}

/// @nodoc
class __$$SearchResultItemGroupImplCopyWithImpl<$Res>
    extends _$SearchResultItemGroupCopyWithImpl<$Res,
        _$SearchResultItemGroupImpl>
    implements _$$SearchResultItemGroupImplCopyWith<$Res> {
  __$$SearchResultItemGroupImplCopyWithImpl(_$SearchResultItemGroupImpl _value,
      $Res Function(_$SearchResultItemGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleReferences = null,
    Object? items = null,
  }) {
    return _then(_$SearchResultItemGroupImpl(
      articleReferences: null == articleReferences
          ? _value._articleReferences
          : articleReferences // ignore: cast_nullable_to_non_nullable
              as List<ArticleReference>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>,
    ));
  }
}

/// @nodoc

class _$SearchResultItemGroupImpl implements _SearchResultItemGroup {
  const _$SearchResultItemGroupImpl(
      {required final List<ArticleReference> articleReferences,
      required final List<SearchResultItem> items})
      : _articleReferences = articleReferences,
        _items = items;

  final List<ArticleReference> _articleReferences;
  @override
  List<ArticleReference> get articleReferences {
    if (_articleReferences is EqualUnmodifiableListView)
      return _articleReferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articleReferences);
  }

  final List<SearchResultItem> _items;
  @override
  List<SearchResultItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SearchResultItemGroup(articleReferences: $articleReferences, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultItemGroupImpl &&
            const DeepCollectionEquality()
                .equals(other._articleReferences, _articleReferences) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_articleReferences),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultItemGroupImplCopyWith<_$SearchResultItemGroupImpl>
      get copyWith => __$$SearchResultItemGroupImplCopyWithImpl<
          _$SearchResultItemGroupImpl>(this, _$identity);
}

abstract class _SearchResultItemGroup implements SearchResultItemGroup {
  const factory _SearchResultItemGroup(
          {required final List<ArticleReference> articleReferences,
          required final List<SearchResultItem> items}) =
      _$SearchResultItemGroupImpl;

  @override
  List<ArticleReference> get articleReferences;
  @override
  List<SearchResultItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultItemGroupImplCopyWith<_$SearchResultItemGroupImpl>
      get copyWith => throw _privateConstructorUsedError;
}
