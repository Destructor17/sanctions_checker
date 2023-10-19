import 'package:flutter/material.dart';
import 'package:sanctions_checker/network/entity/article_dto.b.dart';
import 'package:sanctions_checker/ui_kit/theme/app_theme.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({
    required this.article,
    super.key,
  });

  final ArticleDTO article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.sizes.margin),
      child: Text(
        article.body,
        style: context.typography.bodyMedium.copyWith(
          color: context.colors.neutral.neutral,
        ),
      ),
    );
  }
}
