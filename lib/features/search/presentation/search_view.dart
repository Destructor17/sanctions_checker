import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanctions_checker/features/document/domain/services/document_storage_service.dart';
import 'package:sanctions_checker/features/search/domain/services/search_service.dart';
import 'package:sanctions_checker/features/search/presentation/bloc/search_bloc.f.dart';
import 'package:sanctions_checker/features/search/presentation/search_result_view.dart';
import 'package:sanctions_checker/l10n/context_extension.dart';
import 'package:sanctions_checker/services/service_locator.dart';
import 'package:ui_kit/ui_kit.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => SearchViewState();
}

class SearchViewState extends State<SearchView> {
  final controller = TextEditingController();
  final bloc = SearchBloc();

  DocumentSearchType searchType = DocumentSearchType.fullText;

  @override
  void initState() {
    controller.addListener(search);
    bloc.add(SearchEvent.requestedSearch(controller.text, searchType));
    super.initState();
    documentUpdatedSubscription = sl
        .get<DocumentStorageService>()
        .documentUpdatedStream
        .listen((_) => search());
  }

  StreamSubscription<dynamic>? documentUpdatedSubscription;

  @override
  void dispose() {
    documentUpdatedSubscription?.cancel();
    controller.removeListener(search);
    super.dispose();
  }

  void search() {
    bloc.add(SearchEvent.requestedSearch(controller.text, searchType));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // BoxConstraints.expand() needed for FocusDropper there
        constraints: const BoxConstraints.expand(),
        child: FocusDropper(
          child: BlocBuilder<SearchBloc, SearchState>(
              bloc: bloc,
              builder: (context, state) {
                return CustomScrollView(
                  slivers: [
                    SliverSafeArea(
                      sliver: SliverToBoxAdapter(
                        child: AppSegmentButton(
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
                            search();
                          },
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: AppTextField(
                        controller: controller,
                        hintText: context.loc.searchTitle,
                      ),
                    ),
                    if (state is SearchStateEmpty)
                      SliverFillRemaining(
                        child: Center(
                          child: Text(
                            context.loc.noSearchResult,
                            style: context.typography.bodyMedium.copyWith(
                              color: context.colors.neutral.neutral,
                            ),
                          ),
                        ),
                      )
                    else if (state is SearchStateError)
                      SliverFillRemaining(
                        child: Center(
                          child: Text(
                            context.loc.searchError,
                            style: context.typography.bodyMedium.copyWith(
                              color: context.colors.neutral.neutral,
                            ),
                          ),
                        ),
                      )
                    else if (state is SearchStateLoading)
                      const SliverFillRemaining(
                        child: AppLoader(),
                      )
                    else if (state is SearchStateResult)
                      SearchResultView(searchResult: state.searchResult)
                  ],
                );
              }),
        ),
      ),
    );
  }
}
