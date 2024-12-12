import 'package:auto_route/auto_route.dart';
import 'package:sabaiydev/src/module/files/presentation/pages/file/file_page.dart';
import 'package:sabaiydev/src/module/files/presentation/pages/file_page.dart';
import 'package:sabaiydev/src/module/files/presentation/pages/folder/folder.dart';
import 'package:sabaiydev/src/module/home/presentation/pages/dashboard/dashboard.dart';
import 'package:sabaiydev/src/module/home/presentation/pages/home_page.dart';
import 'package:sabaiydev/src/module/shared/presentation/pages/shared_page.dart';
import 'package:sabaiydev/src/module/short/presentation/pages/short_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: DashBoardRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: FileRoute.page),
        AutoRoute(page: SharedRoute.page),
        AutoRoute(page: ShortRoute.page),
        AutoRoute(page: FileTabRoute.page),
        AutoRoute(page: FolderTabRoute.page),
      ];
}
