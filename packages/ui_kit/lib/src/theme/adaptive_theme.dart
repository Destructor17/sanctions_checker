import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:ui_kit/src/theme/data/app_theme_data.dart';

typedef AdaptiveThemeBuilder = Widget Function(
  BuildContext context,
  AppThemeData theme,
);

class AdaptiveTheme extends StatefulWidget {
  const AdaptiveTheme({
    required this.builder,
    super.key,
  });
  final AdaptiveThemeBuilder builder;

  @override
  State<AdaptiveTheme> createState() => _AdaptiveThemeState();
}

class _AdaptiveThemeState extends State<AdaptiveTheme> {
  late AppThemeData theme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    switch (MediaQuery.of(context).platformBrightness) {
      case Brightness.dark:
        theme = AppThemeData.dark();
        break;
      default:
        theme = AppThemeData.light();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      theme: theme,
      child: widget.builder(context, theme),
    );
  }
}
