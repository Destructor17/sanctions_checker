import 'package:auto_route/auto_route.dart';
import 'package:sanctions_checker/features/document/presentation/document_page.r.dart';
import 'package:sanctions_checker/features/search/presentation/search_page.r.dart';
import 'package:sanctions_checker/features/settings/presentation/settings_page.r.dart';
import 'package:sanctions_checker/features/tabs/presentation/tabs_page.r.dart';

part 'app_router.r.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: RoutePaths.tabs,
          page: TabsRoute.page,
          children: [
            AutoRoute(
              page: SearchRoute.page,
              path: RoutePaths.search,
            ),
            AutoRoute(
              page: DocumentRoute.page,
              path: '${RoutePaths.document}/:article',
            ),
            AutoRoute(
              page: SettingsRoute.page,
              path: RoutePaths.settings,
            ),
          ],
        ),
        RedirectRoute(path: '*', redirectTo: '/search'),
      ];
}

class RoutePaths {
  static const String tabs = '/';
  static const String settings = 'settings';
  static const String search = 'search';
  static const String document = 'document';
}
