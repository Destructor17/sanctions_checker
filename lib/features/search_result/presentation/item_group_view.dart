import 'package:flutter/material.dart';
import 'package:sanctions_checker/features/search/domain/search_result_item_group.f.dart';
import 'package:sanctions_checker/features/search_result/presentation/article_reference_view.dart';
import 'package:sanctions_checker/features/search_result/presentation/item_view.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ItemGroupView extends StatelessWidget {
  const ItemGroupView({
    required this.itemGroup,
    super.key,
  });

  final SearchResultItemGroup itemGroup;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: itemGroup.articleReferences
              .map<Widget>(
                (articleReference) =>
                    ArticleReferenceView(articleReference: articleReference),
              )
              .toList() +
          itemGroup.items
              .map<Widget>(
                (item) => ItemView(item: item),
              )
              .toList(),
    );
  }
}
