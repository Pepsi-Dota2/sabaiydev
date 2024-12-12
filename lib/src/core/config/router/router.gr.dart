// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DashBoardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const DashBoardPage()),
      );
    },
    FileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const FilePage()),
      );
    },
    FileTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FileTabPage(),
      );
    },
    FolderTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FolderTabPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const HomePage()),
      );
    },
    SharedRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SharedPage(),
      );
    },
    ShortRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShortPage(),
      );
    },
  };
}

/// generated route for
/// [DashBoardPage]
class DashBoardRoute extends PageRouteInfo<void> {
  const DashBoardRoute({List<PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FilePage]
class FileRoute extends PageRouteInfo<void> {
  const FileRoute({List<PageRouteInfo>? children})
      : super(
          FileRoute.name,
          initialChildren: children,
        );

  static const String name = 'FileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FileTabPage]
class FileTabRoute extends PageRouteInfo<void> {
  const FileTabRoute({List<PageRouteInfo>? children})
      : super(
          FileTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'FileTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FolderTabPage]
class FolderTabRoute extends PageRouteInfo<void> {
  const FolderTabRoute({List<PageRouteInfo>? children})
      : super(
          FolderTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'FolderTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SharedPage]
class SharedRoute extends PageRouteInfo<void> {
  const SharedRoute({List<PageRouteInfo>? children})
      : super(
          SharedRoute.name,
          initialChildren: children,
        );

  static const String name = 'SharedRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShortPage]
class ShortRoute extends PageRouteInfo<void> {
  const ShortRoute({List<PageRouteInfo>? children})
      : super(
          ShortRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShortRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
