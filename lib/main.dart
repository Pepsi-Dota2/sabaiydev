import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        // localizationsDelegates: context.localizationDelegates,
        localizationsDelegates: [
        EasyLocalization.of(context)!.delegate,
        // DefaultCupertinoLocalizations.delegate,
        DefaultMaterialLocalizations.delegate,
      ],
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        // routerConfig: _appRouter.config()
        );
  }
}