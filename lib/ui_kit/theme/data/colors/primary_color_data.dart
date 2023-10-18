import 'package:flutter/material.dart';

class PrimaryColorsData {
  const PrimaryColorsData({
    required this.primary,
  });

  factory PrimaryColorsData.regular() => const PrimaryColorsData(
        primary: _primary,
      );

  final Color primary;

  static const Color _primary = Color(0xFF8844FF);
}
