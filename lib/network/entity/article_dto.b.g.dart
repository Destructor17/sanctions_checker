// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dto.b.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArticleDTO> _$articleDTOSerializer = new _$ArticleDTOSerializer();

class _$ArticleDTOSerializer implements StructuredSerializer<ArticleDTO> {
  @override
  final Iterable<Type> types = const [ArticleDTO, _$ArticleDTO];
  @override
  final String wireName = 'ArticleDTO';

  @override
  Iterable<Object?> serialize(Serializers serializers, ArticleDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.sections;
    if (value != null) {
      result
        ..add('sections')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(ArticleDTO)])));
    }
    return result;
  }

  @override
  ArticleDTO deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'sections':
          result.sections.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(ArticleDTO)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$ArticleDTO extends ArticleDTO {
  @override
  final String title;
  @override
  final String body;
  @override
  final BuiltMap<String, ArticleDTO>? sections;

  factory _$ArticleDTO([void Function(ArticleDTOBuilder)? updates]) =>
      (new ArticleDTOBuilder()..update(updates))._build();

  _$ArticleDTO._({required this.title, required this.body, this.sections})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'ArticleDTO', 'title');
    BuiltValueNullFieldError.checkNotNull(body, r'ArticleDTO', 'body');
  }

  @override
  ArticleDTO rebuild(void Function(ArticleDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleDTOBuilder toBuilder() => new ArticleDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleDTO &&
        title == other.title &&
        body == other.body &&
        sections == other.sections;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, sections.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArticleDTO')
          ..add('title', title)
          ..add('body', body)
          ..add('sections', sections))
        .toString();
  }
}

class ArticleDTOBuilder implements Builder<ArticleDTO, ArticleDTOBuilder> {
  _$ArticleDTO? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  MapBuilder<String, ArticleDTO>? _sections;
  MapBuilder<String, ArticleDTO> get sections =>
      _$this._sections ??= new MapBuilder<String, ArticleDTO>();
  set sections(MapBuilder<String, ArticleDTO>? sections) =>
      _$this._sections = sections;

  ArticleDTOBuilder();

  ArticleDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _body = $v.body;
      _sections = $v.sections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticleDTO;
  }

  @override
  void update(void Function(ArticleDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArticleDTO build() => _build();

  _$ArticleDTO _build() {
    _$ArticleDTO _$result;
    try {
      _$result = _$v ??
          new _$ArticleDTO._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'ArticleDTO', 'title'),
              body: BuiltValueNullFieldError.checkNotNull(
                  body, r'ArticleDTO', 'body'),
              sections: _sections?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sections';
        _sections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ArticleDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
