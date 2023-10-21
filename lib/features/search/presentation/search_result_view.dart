import 'package:flutter/material.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result.f.dart';
import 'package:sanctions_checker/features/search/presentation/item_group_view.dart';
import 'package:sliver_tools/sliver_tools.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({
    required this.searchResult,
    super.key,
  });

  final SearchResult searchResult;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        ...searchResult.itemGroups.map<Widget>(
          (itemGroup) => ItemGroupView(itemGroup: itemGroup),
        ),
      ],
    );
  }
}
