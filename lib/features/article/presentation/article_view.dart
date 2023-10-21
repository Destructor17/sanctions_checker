import 'package:flutter/material.dart';
import 'package:sanctions_checker/features/article/domain/models/article.f.dart';
import 'package:sanctions_checker/features/article/domain/models/article_reference.f.dart';
import 'package:sanctions_checker/features/article/presentation/article_reference_view.dart';
import 'package:ui_kit/ui_kit.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({
    required this.article,
    required this.onSectionTap,
    super.key,
  });

  final Article article;

  final Function(ArticleReference) onSectionTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(context.sizes.margin),
            child: Text(
              article.body,
              style: context.typography.bodyMedium.copyWith(
                color: context.colors.neutral.neutral,
              ),
            ),
          ),
          ...article.sections.map(
            (section) {
              return ArticleReferenceView(
                articleReference: section,
                onTap: () {
                  onSectionTap(section);
                },
              );
            },
          )
        ],
      ),
    );
  }
}
