import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:universe_ensic_app/pages/main_page.dart';

import 'main.dart';

class UniverseApp extends StatelessWidget {
  const UniverseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: hiveDb.getListenable,
        builder: (context, value, child) {
          return MaterialApp(
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode: hiveDb.mode,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            home: const MainPage(),
          );
        });
  }
}
