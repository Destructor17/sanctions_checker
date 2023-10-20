import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/data/app_sizes_data.dart';
import 'package:ui_kit/src/theme/data/app_theme_data.dart';
import 'package:ui_kit/src/theme/data/app_typography.dart';
import 'package:ui_kit/src/theme/data/colors/app_color_theme.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({
    required this.theme,
    required super.child,
    super.key,
  });

  final AppThemeData theme;

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) =>
      theme != oldWidget.theme;

  static AppThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<AppTheme>();

    return widget?.theme ?? AppThemeData.light();
  }
}

extension AppThemeContext on BuildContext {
  AppThemeData get theme => AppTheme.of(this);

  AppColorScheme get colors => theme.colorScheme;
  AppTypography get typography => theme.typography;
  AppSizesData get sizes => theme.sizes;
}
