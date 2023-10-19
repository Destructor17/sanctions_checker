import 'package:flutter/material.dart';
import 'package:sanctions_checker/network/entity/article_dto.b.dart';
import 'package:sanctions_checker/ui_kit/theme/app_theme.dart';

class ArticleHeader extends StatelessWidget {
  const ArticleHeader({
    required this.article,
    required this.depth,
    required this.onTap,
    super.key,
  });

  final int depth;
  final ArticleDTO article;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ColoredBox(
        color: context.colors.background.onPrimary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.sizes.margin,
            ),
            Padding(
              padding: EdgeInsets.all(context.sizes.margin).copyWith(
                left: depth * context.sizes.margin * 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    article.title,
                    style: context.typography.bodyMedium.copyWith(
                      color: context.colors.neutral.neutral,
                    ),
                  ),
                  // Icon(
                  //   isExpanded
                  //       ? Icons.arrow_drop_down
                  //       : Icons.arrow_right_sharp,
                  //   color: context.colors.neutral.neutral,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
