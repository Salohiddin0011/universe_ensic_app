import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:universe_ensic_app/datas/datas.dart';
import 'package:universe_ensic_app/models/object.dart';

import 'detail.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  void goDetail(
      {required BuildContext context, required ObjectInSpace spaceObject}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Detail(spaceObject: spaceObject),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: .0,
        title: Text(
          'Universe'.tr(),
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/back_two.jpeg",
                ),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: SpaceObj.values.length,
            itemBuilder: (context, index) {
              final objects = SpaceObj.values[index];
              final category = Datas.spaceThings(objects);
              final things = Datas.select(objects);

              return ExpansionTile(
                title: Text(
                  category.object,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ).tr(),
                leading: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Text(
                      things.length.toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    )),
                children: things.map((someObject) {
                  return ListTile(
                    dense: true,
                    leading:
                        Image(image: AssetImage(someObject.imageName ?? "")),
                    title: Text(
                      someObject.name,
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      someObject.diametre,
                      style: const TextStyle(color: Colors.white),
                    ),
                    trailing: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                    onTap: () =>
                        goDetail(spaceObject: someObject, context: context),
                  );
                }).toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}
