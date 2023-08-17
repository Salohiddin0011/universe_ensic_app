import 'package:flutter/material.dart';

import 'package:universe_ensic_app/models/object.dart';

class Detail extends StatelessWidget {
  final ObjectInSpace spaceObject;
  const Detail({Key? key, required this.spaceObject}) : super(key: key);
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
                "assets/images/back_detail.jpeg",
              ),
              fit: BoxFit.cover),
        ),
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: .0,
                title: Text(spaceObject.name),
                flexibleSpace: Stack(
                  children: <Widget>[
                    Positioned.fill(
                        child: Image.asset(
                      spaceObject.imageName ?? "",
                      fit: BoxFit.cover,
                    ))
                  ],
                ),
                floating: true,
                pinned: true,
                snap: true,
                stretch: true,
                expandedHeight: 200.0,
                forceElevated: innerBoxIsScrolled,
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Column(
                children: [
                  Text(spaceObject.description),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
