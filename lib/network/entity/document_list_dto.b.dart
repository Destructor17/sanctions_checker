import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'document_list_dto.b.g.dart';

abstract class DocumentListDTO
    implements Built<DocumentListDTO, DocumentListDTOBuilder> {
  factory DocumentListDTO([void Function(DocumentListDTOBuilder) updates]) =
      _$DocumentListDTO;
  DocumentListDTO._();

  static Serializer<DocumentListDTO> get serializer =>
      _$documentListDTOSerializer;

  String get title;

  String get description;

  BuiltList<String> get refs;

  @BuiltValueField(wireName: 'raw_body')
  String? get rawBody;

  BuiltMap<String, String>? get body;

  BuiltMap<String, DocumentListDTO>? get sections;
}
