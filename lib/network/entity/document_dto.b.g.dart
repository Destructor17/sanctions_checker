// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_dto.b.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DocumentDTO> _$documentDTOSerializer = new _$DocumentDTOSerializer();

class _$DocumentDTOSerializer implements StructuredSerializer<DocumentDTO> {
  @override
  final Iterable<Type> types = const [DocumentDTO, _$DocumentDTO];
  @override
  final String wireName = 'DocumentDTO';

  @override
  Iterable<Object?> serialize(Serializers serializers, DocumentDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'source',
      serializers.serialize(object.source,
          specifiedType: const FullType(String)),
      'sections',
      serializers.serialize(object.sections,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(ArticleDTO)])),
      'lists',
      serializers.serialize(object.lists,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(DocumentListDTO)])),
    ];

    return result;
  }

  @override
  DocumentDTO deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DocumentDTOBuilder();

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
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'sections':
          result.sections.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(ArticleDTO)
              ]))!);
          break;
        case 'lists':
          result.lists.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(DocumentListDTO)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$DocumentDTO extends DocumentDTO {
  @override
  final String title;
  @override
  final String source;
  @override
  final BuiltMap<String, ArticleDTO> sections;
  @override
  final BuiltMap<String, DocumentListDTO> lists;

  factory _$DocumentDTO([void Function(DocumentDTOBuilder)? updates]) =>
      (new DocumentDTOBuilder()..update(updates))._build();

  _$DocumentDTO._(
      {required this.title,
      required this.source,
      required this.sections,
      required this.lists})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'DocumentDTO', 'title');
    BuiltValueNullFieldError.checkNotNull(source, r'DocumentDTO', 'source');
    BuiltValueNullFieldError.checkNotNull(sections, r'DocumentDTO', 'sections');
    BuiltValueNullFieldError.checkNotNull(lists, r'DocumentDTO', 'lists');
  }

  @override
  DocumentDTO rebuild(void Function(DocumentDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentDTOBuilder toBuilder() => new DocumentDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentDTO &&
        title == other.title &&
        source == other.source &&
        sections == other.sections &&
        lists == other.lists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, sections.hashCode);
    _$hash = $jc(_$hash, lists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DocumentDTO')
          ..add('title', title)
          ..add('source', source)
          ..add('sections', sections)
          ..add('lists', lists))
        .toString();
  }
}

class DocumentDTOBuilder implements Builder<DocumentDTO, DocumentDTOBuilder> {
  _$DocumentDTO? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _source;
  String? get source => _$this._source;
  set source(String? source) => _$this._source = source;

  MapBuilder<String, ArticleDTO>? _sections;
  MapBuilder<String, ArticleDTO> get sections =>
      _$this._sections ??= new MapBuilder<String, ArticleDTO>();
  set sections(MapBuilder<String, ArticleDTO>? sections) =>
      _$this._sections = sections;

  MapBuilder<String, DocumentListDTO>? _lists;
  MapBuilder<String, DocumentListDTO> get lists =>
      _$this._lists ??= new MapBuilder<String, DocumentListDTO>();
  set lists(MapBuilder<String, DocumentListDTO>? lists) =>
      _$this._lists = lists;

  DocumentDTOBuilder();

  DocumentDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _source = $v.source;
      _sections = $v.sections.toBuilder();
      _lists = $v.lists.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentDTO;
  }

  @override
  void update(void Function(DocumentDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentDTO build() => _build();

  _$DocumentDTO _build() {
    _$DocumentDTO _$result;
    try {
      _$result = _$v ??
          new _$DocumentDTO._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'DocumentDTO', 'title'),
              source: BuiltValueNullFieldError.checkNotNull(
                  source, r'DocumentDTO', 'source'),
              sections: sections.build(),
              lists: lists.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sections';
        sections.build();
        _$failedField = 'lists';
        lists.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DocumentDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
