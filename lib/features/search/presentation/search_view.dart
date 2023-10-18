import 'package:flutter/material.dart';
import 'package:sanctions_checker/l10n/context_extension.dart';
import 'package:sanctions_checker/ui_kit/ui_kit.dart';

enum DocumentSearchType {
  fullText,
  key,
}

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => SearchViewState();
}

class SearchViewState extends State<SearchView> {
  final controller = TextEditingController();

  DocumentSearchType searchType = DocumentSearchType.fullText;

  @override
  void initState() {
    controller.addListener(onSearchTextChanged);
    super.initState();
  }

  @override
  void dispose() {
    controller.removeListener(onSearchTextChanged);
    super.dispose();
  }

  void onSearchTextChanged() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FocusDropper(
        child: ListView(
          children: [
            AppSegmentButton(
              segments: [
                AppButtonSegment(
                  label: context.loc.searchTypeText,
                  value: DocumentSearchType.fullText,
                ),
                AppButtonSegment(
                  label: context.loc.searchTypeCode,
                  value: DocumentSearchType.key,
                )
              ],
              selected: searchType,
              onSelectionChanged: (searchType) {
                setState(() {
                  this.searchType = searchType;
                });
              },
            ),
            AppTextField(
              controller: controller,
              hintText: context.loc.searchTitle,
            ),
          ],
        ),
      ),
    );
  }
}
