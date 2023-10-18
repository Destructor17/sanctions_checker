import 'package:flutter/material.dart';
import 'package:sanctions_checker/ui_kit/theme/data/app_sizes_data.dart';
import 'package:sanctions_checker/ui_kit/theme/data/app_typography.dart';
import 'package:sanctions_checker/ui_kit/theme/data/colors/app_color_theme.dart';
import 'package:sanctions_checker/ui_kit/theme/material_theme.dart';

class AppThemeData {
  const AppThemeData({
    required this.colorScheme,
    required this.materialTheme,
    required this.typography,
    required this.sizes,
  });

  factory AppThemeData.light() => AppThemeData(
        colorScheme: AppColorScheme.light(),
        materialTheme: MaterialTheme.lightTheme,
        typography: AppTypography.regular(),
        sizes: AppSizesData.regular(),
      );

  factory AppThemeData.dark() => AppThemeData(
        colorScheme: AppColorScheme.dark(),
        materialTheme: MaterialTheme.darkTheme,
        typography: AppTypography.regular(),
        sizes: AppSizesData.regular(),
      );

  final AppColorScheme colorScheme;
  final ThemeData materialTheme;
  final AppTypography typography;
  final AppSizesData sizes;
}
