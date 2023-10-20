import 'package:flutter/material.dart';

class NeutralColorsData {
  const NeutralColorsData({
    required this.neutral,
  });

  factory NeutralColorsData.light() => const NeutralColorsData(
        neutral: _neutralLight,
      );

  factory NeutralColorsData.dark() => const NeutralColorsData(
        neutral: _neutralDark,
      );

  final Color neutral;

  static const Color _neutralLight = Color(0xFF111111);
  static const Color _neutralDark = Color(0xFFFFFFFF);
}
