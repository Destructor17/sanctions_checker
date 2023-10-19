import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sanctions_checker/app/router/app_router.r.dart';
import 'package:sanctions_checker/features/search/domain/search_result_article_reference.f.dart';
import 'package:sanctions_checker/ui_kit/theme/app_theme.dart';

class ArticleReferenceView extends StatelessWidget {
  const ArticleReferenceView({
    required this.articleReference,
    super.key,
  });

  final SearchResultArticleReference articleReference;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context)
            .navigate(DocumentRoute(path: articleReference.path.join('/')));
      },
      child: ColoredBox(
        color: context.colors.background.onPrimary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.sizes.margin,
            ),
            Padding(
              padding: EdgeInsets.all(context.sizes.margin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    articleReference.title,
                    style: context.typography.bodyMedium.copyWith(
                      color: context.colors.neutral.neutral,
                    ),
                  ),
                  Icon(
                    Icons.arrow_right_sharp,
                    color: context.colors.neutral.neutral,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
