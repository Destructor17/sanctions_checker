import 'package:flutter/material.dart';
import 'package:sanctions_checker/features/search/domain/search_result_item.f.dart';
import 'package:sanctions_checker/ui_kit/theme/app_theme.dart';

class ItemView extends StatelessWidget {
  const ItemView({
    required this.item,
    super.key,
  });

  final SearchResultItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ColoredBox(
          color: context.colors.background.onPrimary,
          child: SizedBox(
            height: context.sizes.margin,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(context.sizes.margin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.key,
                style: context.typography.bodyMedium.copyWith(
                  color: context.colors.neutral.neutral,
                ),
              ),
              Text(
                item.body,
                style: context.typography.bodyMedium.copyWith(
                  color: context.colors.neutral.neutral,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
