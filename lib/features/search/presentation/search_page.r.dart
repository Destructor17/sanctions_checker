import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sanctions_checker/features/search/presentation/search_view.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchView();
  }
}
