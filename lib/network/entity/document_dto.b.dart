import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:sanctions_checker/network/entity/article_dto.b.dart';
import 'package:sanctions_checker/network/entity/document_list_dto.b.dart';
import 'package:sanctions_checker/network/entity/serializers.b.dart';

part 'document_dto.b.g.dart';

abstract class DocumentDTO implements Built<DocumentDTO, DocumentDTOBuilder> {
  factory DocumentDTO([void Function(DocumentDTOBuilder) updates]) =
      _$DocumentDTO;
  DocumentDTO._();

  String get title;
  String get source;

  BuiltMap<String, ArticleDTO> get sections;
  BuiltMap<String, DocumentListDTO> get lists;

  static Serializer<DocumentDTO> get serializer => _$documentDTOSerializer;

  static DocumentDTO? fromJson(String jsonString) {
    return serializers.deserializeWith(
      DocumentDTO.serializer,
      json.decode(jsonString),
    );
  }

  String toJson() {
    return json.encode(
      serializers.serializeWith(DocumentDTO.serializer, this),
    );
  }
}
