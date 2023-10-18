import 'package:flutter/material.dart';
import 'package:sanctions_checker/ui_kit/theme/app_theme.dart';

class AppButtonSegment<Value> {
  const AppButtonSegment({
    required this.label,
    required this.value,
  });

  final String label;
  final Value value;
}

class AppSegmentButton<Value> extends StatelessWidget {
  const AppSegmentButton({
    required this.segments,
    required this.selected,
    required this.onSelectionChanged,
    super.key,
  });

  final List<AppButtonSegment<Value>> segments;
  final Value selected;
  final void Function(Value) onSelectionChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.sizes.margin),
      child: SegmentedButton<Value>(
        segments: segments
            .map(
              (e) => ButtonSegment(
                value: e.value,
                label: Text(e.label),
              ),
            )
            .toList(),
        selected: {selected},
        onSelectionChanged: (values) => values.forEach(onSelectionChanged),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => states.contains(MaterialState.selected)
                ? context.colors.primary.primary
                : context.colors.background.background,
          ),
          foregroundColor: MaterialStatePropertyAll(
            context.colors.neutral.neutral,
          ),
          padding: MaterialStatePropertyAll(
            EdgeInsets.all(context.sizes.borderRadius),
          ),
          side: MaterialStatePropertyAll(
            BorderSide(
              color: context.colors.primary.primary,
              width: context.sizes.borderWidth,
            ),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.sizes.borderRadius),
            ),
          ),
        ),
      ),
    );
  }
}
