import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_theme.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.onPressed,
    required this.text,
    this.isElivated = false,
    this.isEnabled = true,
    super.key,
  });

  final Function() onPressed;
  final String text;
  final bool isElivated;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.sizes.margin),
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => isEnabled
                ? context.colors.primary.primary
                : context.colors.background.onPrimary,
          ),
          padding: MaterialStatePropertyAll(
            EdgeInsets.all(context.sizes.borderRadius),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.sizes.borderRadius),
            ),
          ),
        ),
        child: Text(
          text,
          style: context.typography.bodyMedium
              .copyWith(color: context.colors.neutral.neutral),
        ),
      ),
    );
  }
}
