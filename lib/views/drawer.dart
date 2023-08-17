import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey.withOpacity(.4),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 35, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Universe'.tr(),
                    style: TextStyle(
                      color:
                          hiveDb.isLight ? Colors.white.withOpacity(.7) : null,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        hiveDb.changeMode();
                      },
                      icon: hiveDb.isLight
                          ? Icon(Icons.nightlight_round)
                          : Icon(Icons.sunny)),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: ListTile(
                        dense: true,
                        onTap: () {},
                        title: Text(
                          'Notifications'.tr(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        dense: true,
                        onTap: () {},
                        title: Text(
                          'Privacy Policy'.tr(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        dense: true,
                        onTap: () {},
                        title: Text(
                          'About'.tr(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        dense: true,
                        onTap: () {},
                        title: Text(
                          'Settings'.tr(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        trailing: PopupMenuButton<Locale>(
                          padding: EdgeInsets.zero,
                          onSelected: context.setLocale,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          itemBuilder: (context) {
                            return const [
                              PopupMenuItem(
                                value: Locale('uz', 'UZ'),
                                child: Text("🇺🇿 UZ"),
                              ),
                              PopupMenuItem(
                                  value: Locale('ru', 'RU'),
                                  child: Text("🇷🇺 RU")),
                              PopupMenuItem(
                                  value: Locale('en', 'US'),
                                  child: Text("🇺🇸 EN")),
                            ];
                          },
                          icon: const Icon(Icons.language_rounded),
                        ),
                        dense: true,
                        onTap: () {},
                        title: Text(
                          'Language'.tr(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Image.asset(
                    'assets/images/planets/earth_true.png',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
