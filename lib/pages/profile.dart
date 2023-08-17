import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool newValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/back_three.jpeg",
                ),
                fit: BoxFit.cover)),
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
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    PopupMenuButton<Locale>(
                      color: Colors.white,
                      padding: EdgeInsets.zero,
                      onSelected: context.setLocale,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      itemBuilder: (context) {
                        return const [
                          PopupMenuItem(
                            value: Locale('uz', 'UZ'),
                            child: Text("🇺🇿 UZ",
                                style: TextStyle(color: Colors.black)),
                          ),
                          PopupMenuItem(
                              value: Locale('ru', 'RU'),
                              child: Text(
                                "🇷🇺 RU",
                                style: TextStyle(color: Colors.black),
                              )),
                          PopupMenuItem(
                              value: Locale('en', 'US'),
                              child: Text("🇺🇸 EN",
                                  style: TextStyle(color: Colors.black))),
                        ];
                      },
                      icon: const Icon(Icons.language_rounded),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      GlassmorphicContainer(
                        height: 50,
                        width: double.infinity,
                        border: 2,
                        blur: 20,
                        borderRadius: 10,
                        linearGradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.1),
                            Colors.white.withOpacity(0.05),
                          ],
                          stops: [0.1, 1],
                        ),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.5),
                            Colors.white.withOpacity(0.5),
                          ],
                        ),
                        child: ListTile(
                          dense: true,
                          onTap: () {},
                          title: Text(
                            'Notifications'.tr(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      GlassmorphicContainer(
                        height: 50,
                        width: double.infinity,
                        border: 2,
                        blur: 20,
                        borderRadius: 10,
                        linearGradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.1),
                            Colors.white.withOpacity(0.05),
                          ],
                          stops: [0.1, 1],
                        ),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.5),
                            Colors.white.withOpacity(0.5),
                          ],
                        ),
                        child: ListTile(
                          dense: true,
                          onTap: () {},
                          title: Text(
                            'Dark Mode'.tr(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          trailing: Switch.adaptive(
                            value: hiveDb.isLight,
                            onChanged: (value) {
                              hiveDb.changeMode();
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      GlassmorphicContainer(
                        height: 50,
                        width: double.infinity,
                        border: 2,
                        blur: 20,
                        borderRadius: 10,
                        linearGradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.1),
                            Colors.white.withOpacity(0.05),
                          ],
                          stops: [0.1, 1],
                        ),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.5),
                            Colors.white.withOpacity(0.5),
                          ],
                        ),
                        child: ListTile(
                          dense: true,
                          onTap: () {},
                          title: Text(
                            'About'.tr(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
