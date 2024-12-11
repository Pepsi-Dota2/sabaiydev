import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sabaiydev/src/core/config/DI/config.dart';
import 'package:sabaiydev/src/core/config/router/router.dart';
import 'package:sabaiydev/src/core/config/themes/theme.dart';

void main() async {
  await configureDependencies();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('la')],
      path: "assets/translations",
      fallbackLocale: const Locale('en'),
      child:  MyHomePage(),
    ),
  );
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: GlobalThemeData.lightThemeData,
       themeMode: ThemeMode.system,
        // localizationsDelegates: context.localizationDelegates,
        localizationsDelegates: [
          EasyLocalization.of(context)!.delegate,
          // DefaultCupertinoLocalizations.delegate,
          DefaultMaterialLocalizations.delegate,
        ],
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config());
  }
}
