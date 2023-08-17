import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:universe_ensic_app/pages/general_page.dart';
import 'package:universe_ensic_app/pages/profile.dart';
import 'package:universe_ensic_app/pages/solar_system_page.dart';
import 'package:universe_ensic_app/pages/test.dart';
import 'package:universe_ensic_app/views/bottom_appbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  List<Icon> icons = [
    const Icon(Icons.home, size: 35),
    const Icon(Icons.home, size: 35),
    const Icon(Icons.home, size: 35),
    const Icon(CupertinoIcons.gear_alt_fill, size: 35),
  ];
  List<Icon> iconsTwo = [
    const Icon(Icons.home_outlined, size: 35),
    const Icon(Icons.home_outlined, size: 35),
    const Icon(Icons.home_outlined, size: 35),
    const Icon(CupertinoIcons.gear, size: 35),
  ];
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: GlassmorphicContainer(
        alignment: Alignment.center,
        height: 100,
        width: double.infinity,
        border: 2,
        blur: 20,
        borderRadius: 30,
        linearGradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.0002),
            Colors.white.withOpacity(0.0022),
          ],
          stops: [0.1, 1],
        ),
        borderGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.05),
            Colors.white.withOpacity(0.05),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < icons.length; i++)
                AppBarView(
                    secondIc: iconsTwo[i],
                    icon: icons[i],
                    index: i,
                    selectedIndex: selectedIndex,
                    onTap: () {
                      selectedIndex = i;
                      controller.jumpToPage(
                        selectedIndex,
                      );
                      setState(() {});
                    }),
            ],
          ),
        ),
      ),
      body: PageView(
        onPageChanged: (value) {
          selectedIndex = value;
          setState(() {});
        },
        controller: controller,
        children: [
          const TestPage(),
          const SolarSystem(),
          const GeneralPage(),
          const ProfilePage(),
        ],
      ),
    );
  }
}
