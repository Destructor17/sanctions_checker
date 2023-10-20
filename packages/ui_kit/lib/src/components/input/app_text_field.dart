import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_theme.dart';

enum AppTextFieldValidness {
  neutral,
  validated,
  error,
}

class AppTextField extends StatefulWidget {
  const AppTextField({
    required this.controller,
    super.key,
    this.hintText,
    this.placeholderText,
    this.focusNode,
    this.validness = AppTextFieldValidness.neutral,
  });

  final TextEditingController controller;
  final String? placeholderText;
  final String? hintText;
  final FocusNode? focusNode;
  final AppTextFieldValidness validness;

  @override
  State<AppTextField> createState() => AppTextFieldState();
}

class AppTextFieldState extends State<AppTextField> {
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = widget.focusNode ?? FocusNode();
    focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    focusNode
      ..removeListener(_onFocusChange)
      ..dispose();
  }

  void _onFocusChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final Color color;
    switch (widget.validness) {
      case AppTextFieldValidness.error:
        color = context.colors.error.error;
      case AppTextFieldValidness.validated:
        color = color = focusNode.hasFocus
            ? context.colors.success.success
            : context.colors.neutral.neutral;
      default:
        color = focusNode.hasFocus
            ? context.colors.primary.primary
            : context.colors.neutral.neutral;
    }
    return GestureDetector(
      onTap: () {
        focusNode.requestFocus();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          border: Border.all(
            color: color,
            width: context.sizes.borderWidth,
          ),
          borderRadius: BorderRadius.circular(context.sizes.borderRadius),
        ),
        padding: EdgeInsets.all(context.sizes.borderRadius)
            .copyWith(top: context.sizes.borderRadius - context.sizes.margin),
        margin: EdgeInsets.all(context.sizes.margin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.hintText != null)
              Text(
                widget.hintText!,
                style: context.typography.hint
                    .copyWith(color: context.colors.neutral.neutral),
              ),
            SizedBox(height: context.sizes.margin),
            TextField(
              controller: widget.controller,
              cursorColor: color,
              cursorWidth: context.sizes.borderWidth,
              style: context.typography.bodyMedium.copyWith(
                color: context.colors.neutral.neutral,
              ),
              decoration:
                  InputDecoration.collapsed(hintText: widget.placeholderText),
              focusNode: focusNode,
            ),
          ],
        ),
      ),
    );
  }
}
