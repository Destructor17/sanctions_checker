// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.r.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DocumentRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DocumentRouteArgs>(
          orElse: () =>
              DocumentRouteArgs(path: pathParams.getString('article')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DocumentPage(path: args.path),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    TabsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TabsPage(),
      );
    },
  };
}

/// generated route for
/// [DocumentPage]
class DocumentRoute extends PageRouteInfo<DocumentRouteArgs> {
  DocumentRoute({
    required String path,
    List<PageRouteInfo>? children,
  }) : super(
          DocumentRoute.name,
          args: DocumentRouteArgs(path: path),
          rawPathParams: {'article': path},
          initialChildren: children,
        );

  static const String name = 'DocumentRoute';

  static const PageInfo<DocumentRouteArgs> page =
      PageInfo<DocumentRouteArgs>(name);
}

class DocumentRouteArgs {
  const DocumentRouteArgs({required this.path});

  final String path;

  @override
  String toString() {
    return 'DocumentRouteArgs{path: $path}';
  }
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TabsPage]
class TabsRoute extends PageRouteInfo<void> {
  const TabsRoute({List<PageRouteInfo>? children})
      : super(
          TabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
