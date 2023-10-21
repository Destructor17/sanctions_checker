import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_kit/src/components/loader/app_loader.dart';
import 'package:ui_kit/src/theme/app_theme.dart';

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

  bool isLoaderVisible = false;

  void updateLoaderVisibility() {
    final targetLoaderVisibility = handles.isNotEmpty;
    if (targetLoaderVisibility != isLoaderVisible) {
      setState(() {
        isLoaderVisible = targetLoaderVisibility;
      });
    }
  }

  void startLoading(Type handleType) {
    if (handles.isEmpty) {
      animationController.forward().then((_) => updateLoaderVisibility());
      WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
            isLoaderVisible = true;
          }));
    }
    handles.add(handleType);
  }

  void stopLoading(Type handleType) {
    handles.remove(handleType);
    if (handles.isEmpty) {
      animationController.reverse().then((_) => updateLoaderVisibility());
      WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!isLoaderVisible) {
      return Provider<AppOverlayLoaderState>.value(
        value: this,
        child: widget.child,
      );
    }
    final animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
    );
    return Stack(
      fit: StackFit.expand,
      children: [
        AbsorbPointer(
          absorbing: true,
          child: Provider<AppOverlayLoaderState>.value(
            value: this,
            child: widget.child,
          ),
        ),
        AbsorbPointer(
          absorbing: true,
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

extension AppLoaderHandleContext on BuildContext {
  AppLoaderHandle get loader =>
      AppLoaderHandle._(state: read<AppOverlayLoaderState>());
}
