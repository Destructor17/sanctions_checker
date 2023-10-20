import 'package:flutter/material.dart';

class FocusDropper extends StatelessWidget {
  const FocusDropper({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).focusedChild?.unfocus();
      },
      child: child,
    );
  }
}
