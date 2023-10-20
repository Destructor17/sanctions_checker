import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_reference.f.freezed.dart';

@freezed
class ArticleReference with _$ArticleReference {
  const factory ArticleReference({
    required List<String> path,
    required String title,
  }) = _ArticleReference;
}
