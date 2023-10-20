import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanctions_checker/app/router/app_router.r.dart';
import 'package:sanctions_checker/features/article/presentation/article_reference_view.dart';
import 'package:sanctions_checker/features/document/presentation/bloc/document_bloc.f.dart';
import 'package:sanctions_checker/l10n/context_extension.dart';
import 'package:ui_kit/ui_kit.dart';

class DocumentView extends StatefulWidget {
  const DocumentView({
    required this.path,
    super.key,
  });

  final List<String> path;

  @override
  State<StatefulWidget> createState() => DocumentViewState();
}

class DocumentViewState extends State<DocumentView> {
  late final bloc = DocumentBloc(path: widget.path);

  bool canNavigateToParent() => widget.path.isNotEmpty;

  void navigateToPath(List<String> path) {
    AutoRouter.of(context).push(
      DocumentRoute(
        path: path.join('/'),
      ),
    );
  }

  void navigateToParent(BuildContext context) {
    if (canNavigateToParent()) {
      navigateToPath(widget.path.sublist(0, widget.path.length - 1));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DocumentBloc, DocumentState>(
      bloc: bloc,
      builder: (context, state) {
        final Widget body;
        final String title;
        if (state is DocumentStateResult) {
          body = SafeArea(
            child: ListView(
              children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(context.sizes.margin),
                      child: Text(
                        state.article.body,
                        style: context.typography.bodyMedium.copyWith(
                          color: context.colors.neutral.neutral,
                        ),
                      ),
                    ),
                  ] +
                  state.article.sections.map(
                    (section) {
                      return ArticleReferenceView(
                        articleReference: section,
                        onTap: () {
                          navigateToPath(section.path);
                        },
                      );
                    },
                  ).toList(),
            ),
          );
          title = state.article.title;
        } else if (state is DocumentStateError) {
          body = Center(child: Text(context.loc.articleLoadingError));
          title = '';
        } else {
          body = const Center(child: AppLoader());
          title = '';
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(
              title,
              style: context.typography.bodyMedium.copyWith(
                color: context.colors.neutral.neutral,
              ),
            ),
            backgroundColor: context.colors.background.onPrimary,
          ),
          body: body,
        );
      },
    );
  }
}
