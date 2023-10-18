import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HackedStack extends Stack {
  const HackedStack({
    super.key,
    super.children,
    super.fit,
  });

  @override
  HackedRenderStack createRenderObject(BuildContext context) {
    return HackedRenderStack(
      alignment: alignment,
      textDirection: textDirection ?? Directionality.of(context),
      fit: fit,
    );
  }
}

class HackedRenderStack extends RenderStack {
  HackedRenderStack({
    super.alignment,
    super.textDirection,
    super.fit,
  });

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    var child = firstChild;
    while (child != null) {
      final childParentData =
          child.parentData! as ContainerBoxParentData<RenderBox>;
      final isHit = result.addWithPaintOffset(
        offset: childParentData.offset,
        position: position,
        hitTest: (result, transformed) {
          assert(transformed == position - childParentData.offset);
          return child!.hitTest(result, position: transformed);
        },
      );
      if (isHit) {
        return true;
      }
      child = childParentData.nextSibling;
    }
    return false;
  }
}
