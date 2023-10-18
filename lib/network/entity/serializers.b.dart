library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:sanctions_checker/network/entity/document_dto.b.dart';
import 'package:sanctions_checker/network/entity/document_list_dto.b.dart';

part 'serializers.b.g.dart';

@SerializersFor([
  DocumentDTO,
  DocumentListDTO,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
