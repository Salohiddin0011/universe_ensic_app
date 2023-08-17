import 'package:easy_localization/easy_localization.dart';

import 'package:universe_ensic_app/models/object.dart';

import '../models/category.dart';

sealed class Datas {
  static List<ObjectInSpace> select(SpaceObj spaceObj) {
    String lightYears = 'light-years'.tr();
    String km = 'km'.tr();
    String arcseconds = 'arcseconds'.tr();
    String million = 'million'.tr();
    String billion = 'billion'.tr();
    String kilometres = 'kilometres'.tr();
    String sunMass = 'sunMass'.tr();
    switch (spaceObj) {
      case SpaceObj.stars:
        return [
          ObjectInSpace(
              imageName: "assets/images/stars/flame_star_no_back.webp",
              name: "UY Scuti".tr(),
              diametre: "1,1883E9 $km",
              category: spaceObj.name,
              description: "uY_scuti_desc".tr()),
          ObjectInSpace(
              imageName: "assets/images/stars/flame_star_no_back.webp",
              name: "Stephenson 2-18".tr(),
              diametre: "2,9915E9 $km",
              category: spaceObj.name,
              description: "stephenson_desc".tr()),
          ObjectInSpace(
            imageName: "assets/images/stars/sirius_a.webp",
            name: "Sirius A".tr(),
            diametre: "2.4 $million $km",
            category: spaceObj.name,
            description: "sirius_desc".tr(),
          )
        ];
      case SpaceObj.quasars:
        return [
          ObjectInSpace(
            imageName: "assets/images/quasars/quasar_huge.webp",
            name: "ULAS J1342+0928",
            diametre: "800 $million $sunMass",
            category: spaceObj.name,
            description: "ulas_desc".tr(),
          ),
          ObjectInSpace(
            imageName: "assets/images/quasars/quasar.png",
            name: "3C 273",
            diametre: "29 $arcseconds",
            category: spaceObj.name,
            description: "3c_desc".tr(),
          ),
        ];
      case SpaceObj.planets:
        return [
          ObjectInSpace(
              imageName: "assets/images/planets/mercury.png",
              name: "Mercury".tr(),
              diametre: "4 879,4 $km",
              category: spaceObj.name,
              description: "mercury_desc".tr()),
          ObjectInSpace(
              imageName: "assets/images/planets/venera.png",
              name: "Venus".tr(),
              diametre: "12 104 $km",
              category: spaceObj.name,
              description: "venus_desc".tr()),
          ObjectInSpace(
              imageName: "assets/images/planets/earth_true.png",
              name: "Earth".tr(),
              diametre: "12 742 $km",
              category: spaceObj.name,
              description: "earth_desc".tr()),
          ObjectInSpace(
              imageName: "assets/images/planets/mars.png",
              name: "Mars".tr(),
              diametre: "6 779 $km",
              category: spaceObj.name,
              description: "mars_desc".tr()),
          ObjectInSpace(
              imageName: "assets/images/planets/jupite.png",
              name: "Jupiter".tr(),
              diametre: "139 820 $km",
              category: spaceObj.name,
              description: "jupiter_desc".tr()),
          ObjectInSpace(
              imageName: "assets/images/planets/saturn.png",
              name: "Saturn".tr(),
              diametre: "116 460 $km",
              category: spaceObj.name,
              description: "saturn_desc".tr()),
          ObjectInSpace(
              imageName: "assets/images/planets/uran.png",
              name: "Uranus".tr(),
              diametre: "51 118 $km",
              category: spaceObj.name,
              description: "uranus_desc".tr()),
          ObjectInSpace(
              imageName: "assets/images/planets/neptune.png",
              name: "Neptune".tr(),
              diametre: "55 528 $km",
              category: spaceObj.name,
              description: "neptune_desc".tr()),
        ];
      case SpaceObj.blackHoles:
        return [
          ObjectInSpace(
            imageName: "assets/images/black_holes/phoenix.jpeg",
            name: "Phoenix A".tr(),
            diametre: "590.5 $billion $kilometres",
            category: spaceObj.name,
            description: "sirius_desc".tr(),
          ),
          ObjectInSpace(
            imageName: "assets/images/black_holes/ton.jpeg",
            name: "TON - 618",
            diametre: "390 $billion $kilometres",
            category: spaceObj.name,
            description: "sirius_desc".tr(),
          ),
        ];
      case SpaceObj.galaxy:
        return [
          ObjectInSpace(
            imageName: "assets/images/galaxy/milky.jpeg",
            name: "Milky way".tr(),
            diametre: "100,000 $lightYears",
            category: spaceObj.name,
            description: "sirius_desc".tr(),
          ),
          ObjectInSpace(
            imageName: "assets/images/galaxy/andromeda.jpeg",
            name: "Andromeda".tr(),
            diametre: "220,000 $lightYears",
            category: spaceObj.name,
            description: "sirius_desc".tr(),
          ),
        ];
      case SpaceObj.nebulae:
        return [
          ObjectInSpace(
            imageName: "assets/images/nebula/orion.jpeg",
            name: "Orion Nebula".tr(),
            diametre: "24 $lightYears",
            category: spaceObj.name,
            description: "sirius_desc".tr(),
          ),
          ObjectInSpace(
            imageName: "assets/images/nebula/cat_eye.jpeg",
            name: "Cats eye nebula".tr(),
            diametre: "0.4 $lightYears",
            category: spaceObj.name,
            description: "sirius_desc".tr(),
          ),
        ];
    }
  }

  static Category spaceThings(SpaceObj spaceObjects) {
    switch (spaceObjects) {
      case SpaceObj.stars:
        return Category("stars".tr(), description: "stars_desc".tr());
      case SpaceObj.quasars:
        return Category("quasars".tr(), description: "quasars_desc".tr());
      case SpaceObj.planets:
        return Category("planets".tr(), description: "planets_desc".tr());
      case SpaceObj.blackHoles:
        return Category("blackHoles".tr(), description: "blackHoles_desc".tr());
      case SpaceObj.galaxy:
        return Category("galaxy".tr(), description: "galaxy_desc".tr());
      case SpaceObj.nebulae:
        return Category("nebulae".tr(), description: "nebulae_desc".tr());
    }
  }

  // static String age(int year) {
  //   final time = 2020 - year;
  //   final age = 'age'.tr();
  //   return "$time $age";
  // }
}

enum SpaceObj {
  stars,
  quasars,
  planets,
  blackHoles,
  galaxy,
  nebulae,
}
