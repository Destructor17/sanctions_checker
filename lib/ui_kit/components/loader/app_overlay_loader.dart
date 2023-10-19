import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sanctions_checker/ui_kit/components/loader/hacked_stack.dart';
import 'package:sanctions_checker/ui_kit/theme/app_theme.dart';
import 'package:sanctions_checker/ui_kit/ui_kit.dart';

class AppOverlayLoader extends StatefulWidget {
  const AppOverlayLoader({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<StatefulWidget> createState() => AppOverlayLoaderState();
}

class AppOverlayLoaderState extends State<AppOverlayLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
    value: 0,
  );

  Set<Type> handles = {};

  void startLoading(Type handleType) {
    if (handles.isEmpty) {
      animationController.forward();
      WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
    }
    handles.add(handleType);
  }

  void stopLoading(Type handleType) {
    handles.remove(handleType);
    if (handles.isEmpty) {
      animationController.reverse();
      WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
    }
  }

  @override
  Widget build(BuildContext context) {
    final animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
    );
    return HackedStack(
      fit: StackFit.expand,
      children: [
        AbsorbPointer(
          absorbing: handles.isNotEmpty,
          child: Provider<AppOverlayLoaderState>.value(
            value: this,
            child: widget.child,
          ),
        ),
        AbsorbPointer(
          absorbing: false,
          child: FadeTransition(
            opacity: animation,
            alwaysIncludeSemantics: true,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ColoredBox(
                  color: context.colors.background.background.withAlpha(192),
                ),
                const AppLoader(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AppLoaderHandle {
  AppLoaderHandle._({required this.state});
  final AppOverlayLoaderState state;

  void startLoading<HandleType>() {
    state.startLoading(HandleType);
  }

  void stopLoading<HandleType>() {
    state.stopLoading(HandleType);
  }
}

extension AppThemeContext on BuildContext {
  AppLoaderHandle get loader =>
      AppLoaderHandle._(state: read<AppOverlayLoaderState>());
}
