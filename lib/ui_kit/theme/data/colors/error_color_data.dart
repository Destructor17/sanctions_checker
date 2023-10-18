import 'package:flutter/material.dart';

class ErrorColorsData {
  const ErrorColorsData({
    required this.error,
  });

  factory ErrorColorsData.regular() => const ErrorColorsData(
        error: _error,
      );

  final Color error;

  static const Color _error = Color(0xFFF03020);
}
