import 'package:flutter/material.dart';
import 'package:universe_ensic_app/models/object.dart';

// ignore: must_be_immutable
class PlanetsDetail extends StatefulWidget {
  final ObjectInSpace planet;
  int index;
  PlanetsDetail({super.key, required this.planet, required this.index});

  @override
  State<PlanetsDetail> createState() => _PlanetsDetailState();
}

class _PlanetsDetailState extends State<PlanetsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/back.jpeg",
              ),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Hero(
                  tag: widget.index,
                  child: SizedBox(
                    height: 350,
                    child: Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(widget.planet.imageName!)),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  widget.planet.description,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
