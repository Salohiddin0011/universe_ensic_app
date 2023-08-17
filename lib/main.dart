import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:universe_ensic_app/app.dart';
import 'package:universe_ensic_app/data_base/hive_db.dart';

HiveDb hiveDb = HiveDb();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await HiveDb.init();
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('uz', 'UZ'),
      Locale('ru', 'RU'),
      Locale('en', 'US'),
    ],
    path: 'assets/languages',
    fallbackLocale: const Locale('en', 'US'),
    child: const UniverseApp(),
  ));
}
