import 'package:auto_route/auto_route.dart';
import 'package:sabaiydev/src/module/home/presentation/pages/home_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
  ];
}
