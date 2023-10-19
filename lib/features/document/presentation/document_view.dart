import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanctions_checker/app/router/app_router.r.dart';
import 'package:sanctions_checker/features/article/presentation/article_body.dart';
import 'package:sanctions_checker/features/article/presentation/article_footer.dart';
import 'package:sanctions_checker/features/article/presentation/article_header.dart';
import 'package:sanctions_checker/features/document/presentation/bloc/document_bloc.f.dart';
import 'package:sanctions_checker/network/entity/article_dto.b.dart';
import 'package:sanctions_checker/ui_kit/ui_kit.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DocumentView extends StatefulWidget {
  const DocumentView({
    required this.expandedPath,
    super.key,
  });

  final List<String> expandedPath;

  @override
  State<StatefulWidget> createState() => DocumentViewState();
}

class DocumentViewState extends State<DocumentView> {
  final bloc = DocumentBloc();
  final itemScrollController = ItemScrollController();

  int? latestExpandedWidgetIndex;

  String? memorizedExpandedPath;

  List<Widget> buildArticles(
    List<Widget> previousWidgets,
    Map<String, ArticleDTO>? articles,
    int depth,
    List<String>? expandenPath,
    List<String> path,
  ) {
    var result = previousWidgets;
    final sortedKeys = (articles?.keys ?? []).toList()..sort();
    for (final pathPart in sortedKeys) {
      final section = articles?[pathPart];
      if (section == null) {
        continue;
      }
      final newExpandenPath;
      if (expandenPath == null ||
          expandenPath.isEmpty ||
          expandenPath.first != pathPart) {
        newExpandenPath = null;
      } else {
        newExpandenPath = expandenPath.skip(1).toList();
        if (expandenPath.length == 1) {
          latestExpandedWidgetIndex = result.length;
        }
      }
      result.add(ArticleHeader(
        article: section,
        depth: depth + 1,
        onTap: () {
          final String newPath;
          if (newExpandenPath == null) {
            newPath = (path + [pathPart]).join('/');
          } else {
            newPath = path.join('/');
          }
          AutoRouter.of(context).navigate(DocumentRoute(path: newPath));
          memorizedExpandedPath = newPath;
        },
      ));
      if (newExpandenPath != null) {
        result = buildArticles(
          result..add(ArticleBody(article: section)),
          section.sections?.toMap(),
          depth + 1,
          newExpandenPath,
          path + [pathPart],
        )..add(const ArticleFooter());
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (latestExpandedWidgetIndex != null &&
          memorizedExpandedPath != widget.expandedPath.join('/')) {
        itemScrollController.jumpTo(index: latestExpandedWidgetIndex!);
        memorizedExpandedPath = widget.expandedPath.join('/');
      }
    });
    return Scaffold(
      body: BlocBuilder<DocumentBloc, DocumentState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is DocumentStateResult) {
            final widgets = buildArticles(
              [],
              state.document.sections.toMap(),
              0,
              widget.expandedPath,
              [],
            );
            return SafeArea(
              child: ScrollablePositionedList.builder(
                itemScrollController: itemScrollController,
                itemCount: widgets.length,
                itemBuilder: (context, index) => widgets[index],
              ),
            );
          } else if (state is DocumentStateError) {
            return const Center(child: Text("error"));
          }
          return const Center(child: AppLoader());
        },
      ),
    );
  }
}
