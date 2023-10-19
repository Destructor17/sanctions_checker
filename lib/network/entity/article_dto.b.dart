import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'article_dto.b.g.dart';

abstract class ArticleDTO implements Built<ArticleDTO, ArticleDTOBuilder> {
  factory ArticleDTO([void Function(ArticleDTOBuilder) updates]) = _$ArticleDTO;
  ArticleDTO._();

  static Serializer<ArticleDTO> get serializer => _$articleDTOSerializer;

  String get title;
  String get body;

  BuiltMap<String, ArticleDTO>? get sections;
}
