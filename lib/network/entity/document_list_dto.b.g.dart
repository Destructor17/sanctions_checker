// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_list_dto.b.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DocumentListDTO> _$documentListDTOSerializer =
    new _$DocumentListDTOSerializer();

class _$DocumentListDTOSerializer
    implements StructuredSerializer<DocumentListDTO> {
  @override
  final Iterable<Type> types = const [DocumentListDTO, _$DocumentListDTO];
  @override
  final String wireName = 'DocumentListDTO';

  @override
  Iterable<Object?> serialize(Serializers serializers, DocumentListDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'refs',
      serializers.serialize(object.refs,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.rawBody;
    if (value != null) {
      result
        ..add('raw_body')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.body;
    if (value != null) {
      result
        ..add('body')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(String)])));
    }
    value = object.sections;
    if (value != null) {
      result
        ..add('sections')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(DocumentListDTO)
            ])));
    }
    return result;
  }

  @override
  DocumentListDTO deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DocumentListDTOBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'refs':
          result.refs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'raw_body':
          result.rawBody = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'body':
          result.body.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
        case 'sections':
          result.sections.replace(serializers.deserialize(value,
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

class _$DocumentListDTO extends DocumentListDTO {
  @override
  final String title;
  @override
  final String description;
  @override
  final BuiltList<String> refs;
  @override
  final String? rawBody;
  @override
  final BuiltMap<String, String>? body;
  @override
  final BuiltMap<String, DocumentListDTO>? sections;

  factory _$DocumentListDTO([void Function(DocumentListDTOBuilder)? updates]) =>
      (new DocumentListDTOBuilder()..update(updates))._build();

  _$DocumentListDTO._(
      {required this.title,
      required this.description,
      required this.refs,
      this.rawBody,
      this.body,
      this.sections})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'DocumentListDTO', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, r'DocumentListDTO', 'description');
    BuiltValueNullFieldError.checkNotNull(refs, r'DocumentListDTO', 'refs');
  }

  @override
  DocumentListDTO rebuild(void Function(DocumentListDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentListDTOBuilder toBuilder() =>
      new DocumentListDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentListDTO &&
        title == other.title &&
        description == other.description &&
        refs == other.refs &&
        rawBody == other.rawBody &&
        body == other.body &&
        sections == other.sections;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, refs.hashCode);
    _$hash = $jc(_$hash, rawBody.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, sections.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DocumentListDTO')
          ..add('title', title)
          ..add('description', description)
          ..add('refs', refs)
          ..add('rawBody', rawBody)
          ..add('body', body)
          ..add('sections', sections))
        .toString();
  }
}

class DocumentListDTOBuilder
    implements Builder<DocumentListDTO, DocumentListDTOBuilder> {
  _$DocumentListDTO? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _refs;
  ListBuilder<String> get refs => _$this._refs ??= new ListBuilder<String>();
  set refs(ListBuilder<String>? refs) => _$this._refs = refs;

  String? _rawBody;
  String? get rawBody => _$this._rawBody;
  set rawBody(String? rawBody) => _$this._rawBody = rawBody;

  MapBuilder<String, String>? _body;
  MapBuilder<String, String> get body =>
      _$this._body ??= new MapBuilder<String, String>();
  set body(MapBuilder<String, String>? body) => _$this._body = body;

  MapBuilder<String, DocumentListDTO>? _sections;
  MapBuilder<String, DocumentListDTO> get sections =>
      _$this._sections ??= new MapBuilder<String, DocumentListDTO>();
  set sections(MapBuilder<String, DocumentListDTO>? sections) =>
      _$this._sections = sections;

  DocumentListDTOBuilder();

  DocumentListDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _refs = $v.refs.toBuilder();
      _rawBody = $v.rawBody;
      _body = $v.body?.toBuilder();
      _sections = $v.sections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentListDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentListDTO;
  }

  @override
  void update(void Function(DocumentListDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentListDTO build() => _build();

  _$DocumentListDTO _build() {
    _$DocumentListDTO _$result;
    try {
      _$result = _$v ??
          new _$DocumentListDTO._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'DocumentListDTO', 'title'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'DocumentListDTO', 'description'),
              refs: refs.build(),
              rawBody: rawBody,
              body: _body?.build(),
              sections: _sections?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refs';
        refs.build();

        _$failedField = 'body';
        _body?.build();
        _$failedField = 'sections';
        _sections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DocumentListDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
