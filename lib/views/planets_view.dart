import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:universe_ensic_app/models/object.dart';

// ignore: must_be_immutable
class PlanetsView extends StatelessWidget {
  int i;
  int tag;
  List<ObjectInSpace> planets;
  void Function() onTap;
  PlanetsView(
      {super.key,
      required this.i,
      required this.planets,
      required this.onTap,
      required this.tag});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Hero(tag: tag, child: Image.asset(planets[i].imageName!)),
          Text(
            planets[i].name.tr(),
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
