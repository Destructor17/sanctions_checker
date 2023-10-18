import 'package:flutter/material.dart';

class BackgroundColorsData {
  const BackgroundColorsData({
    required this.background,
    required this.onPrimary,
  });

  factory BackgroundColorsData.light() => const BackgroundColorsData(
        background: _backgroundLight,
        onPrimary: _onPrimaryLight,
      );

  factory BackgroundColorsData.dark() => const BackgroundColorsData(
        background: _backgroundDark,
        onPrimary: _onPrimaryDark,
      );

  final Color background;
  final Color onPrimary;

  static const Color _backgroundLight = Color(0xFFF0F0F0);
  static const Color _onPrimaryLight = Color(0xFFA0A0A0);

  static const Color _backgroundDark = Color(0xFF101010);
  static const Color _onPrimaryDark = Color(0xFF303030);
}
