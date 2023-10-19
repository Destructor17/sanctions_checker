import 'package:flutter/material.dart';
import 'package:sanctions_checker/ui_kit/theme/app_theme.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: context.colors.primary.primary,
      ),
    );
  }
}
