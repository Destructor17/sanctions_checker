import 'package:flutter/material.dart';

class PrimaryColorsData {
  const PrimaryColorsData({
    required this.primary,
  });

  factory PrimaryColorsData.light() => const PrimaryColorsData(
        primary: _primaryLight,
      );

  factory PrimaryColorsData.dark() => const PrimaryColorsData(
        primary: _primaryDark,
      );

  final Color primary;

  static const Color _primaryLight = Color(0xFF8888FF);
  static const Color _primaryDark = Color(0xFF6666EE);
}
