import 'package:flutter/material.dart';
import 'package:sanctions_checker/ui_kit/theme/app_theme.dart';
import 'package:sanctions_checker/ui_kit/theme/data/app_theme_data.dart';

typedef AdaptiveThemeBuilder = Widget Function(
  BuildContext context,
  AppThemeData theme,
);

class AdaptiveTheme extends StatefulWidget {
  const AdaptiveTheme({
    // required this.child,
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
    theme = AppThemeData.light();
  }

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      theme: theme,
      child: widget.builder(context, theme),
    );
  }
}

enum AppThemeColorMode {
  light,
  dark,
}
