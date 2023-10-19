import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sanctions_checker/features/document/presentation/document_view.dart';

@RoutePage()
class DocumentPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const DocumentPage({
    @PathParam('article') required this.path,
  });
  final String path;

  @override
  Widget build(BuildContext context) {
    return DocumentView(
      expandedPath: path.split('/'),
    );
  }
}
