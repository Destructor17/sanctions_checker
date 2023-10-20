import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/data/app_text_styles.dart';

class AppTypography {
  const AppTypography({
    required this.bodyMedium,
    required this.hint,
  });

  factory AppTypography.regular() => AppTypography(
        bodyMedium: AppTextStyles.bodyMedium,
        hint: AppTextStyles.hint,
      );

  final TextStyle bodyMedium;
  final TextStyle hint;
}
