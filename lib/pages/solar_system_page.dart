import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:universe_ensic_app/datas/datas.dart';
import 'package:universe_ensic_app/models/category.dart';
import 'package:universe_ensic_app/pages/planets_detail.dart';
import 'package:universe_ensic_app/views/planets_view.dart';

import '../models/object.dart';

class SolarSystem extends StatefulWidget {
  const SolarSystem({super.key});

  @override
  State<SolarSystem> createState() => _SolarSystemState();
}

int indexOfPlanet = 0;

class _SolarSystemState extends State<SolarSystem> {
  List<ObjectInSpace> planets = Datas.select(SpaceObj.planets);
  Category category = Datas.spaceThings(SpaceObj.planets);
  PageController controller = PageController();
  String diametreOfPlanet = "diametre_of_planet".tr();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: .0,
        title: Text(
          'Solar System'.tr(),
          style:
              const TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/back.jpeg",
                ),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    category.description,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "There are 8 Planets of the Solar system".tr(),
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 25),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 420,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    enlargeCenterPage: true,
                    viewportFraction: 0.7,
                    aspectRatio: 16 / 9,
                    enlargeFactor: 0.3,
                    onPageChanged: (index, reason) {
                      indexOfPlanet = index;
                      setState(() {});
                    },
                  ),
                  items: [
                    for (int i = 0; i < planets.length; i++)
                      PlanetsView(
                          tag: i,
                          i: i,
                          planets: planets,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PlanetsDetail(
                                  planet: planets[i],
                                  index: i,
                                ),
                              ),
                            );
                          })
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "$diametreOfPlanet ${planets[indexOfPlanet].diametre}",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
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
