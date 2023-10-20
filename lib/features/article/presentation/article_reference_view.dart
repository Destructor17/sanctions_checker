import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sanctions_checker/app/router/app_router.r.dart';
import 'package:sanctions_checker/features/article/domain/models/article_reference.f.dart';
import 'package:ui_kit/ui_kit.dart';

class ArticleReferenceView extends StatelessWidget {
  const ArticleReferenceView({
    required this.articleReference,
    this.onTap,
    super.key,
  });

  final ArticleReference articleReference;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ??
          () async {
            final router = AutoRouter.of(context);
            await router.navigate(
              DocumentRoute(path: ''),
            );
            router.popUntilRoot();
            final routes = <DocumentRoute>[];
            for (var i = 0; i < articleReference.path.length; i++) {
              routes.add(
                DocumentRoute(
                  path: articleReference.path.sublist(0, i + 1).join('/'),
                ),
              );
            }
            await router.pushAll(routes);
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
