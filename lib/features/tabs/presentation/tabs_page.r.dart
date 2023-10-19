import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sanctions_checker/app/router/app_router.r.dart';
import 'package:sanctions_checker/l10n/context_extension.dart';
import 'package:sanctions_checker/ui_kit/theme/app_theme.dart';

@RoutePage()
class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = <(PageRouteInfo<dynamic>, BottomNavigationBarItem)>[
      (
        const SearchRoute(),
        BottomNavigationBarItem(
          label: context.loc.searchTitle,
          icon: const Icon(Icons.search),
        ),
      ),
      (
        DocumentRoute(path: ''),
        BottomNavigationBarItem(
          label: context.loc.documentTitle,
          icon: const Icon(Icons.file_open_outlined),
        ),
      ),
      (
        const SettingsRoute(),
        BottomNavigationBarItem(
          label: context.loc.settingsTitle,
          icon: const Icon(Icons.settings),
        ),
      )
    ];
    return AutoTabsRouter(
      routes: tabs.map((e) => e.$1).toList(),
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: tabs.map((e) => e.$2).toList(),
            selectedItemColor: context.colors.primary.primary,
            backgroundColor: context.colors.background.onPrimary,
          ),
        );
      },
    );
  }
}
