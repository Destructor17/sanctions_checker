import 'package:flutter/material.dart';

class SuccessColorsData {
  const SuccessColorsData({
    required this.success,
  });

  factory SuccessColorsData.regular() => const SuccessColorsData(
        success: _success,
      );

  final Color success;

  static const Color _success = Color(0xFF20C020);
}
