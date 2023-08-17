import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarView extends StatelessWidget {
  Icon icon;
  Icon secondIc;
  int index;
  int selectedIndex;
  void Function() onTap;
  AppBarView(
      {super.key,
      required this.secondIc,
      required this.icon,
      required this.index,
      required this.selectedIndex,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              offset: const Offset(-1, -1),
              color: Colors.white.withOpacity(.5),
            ),
            BoxShadow(
              blurRadius: 2,
              offset: const Offset(1, 1),
              color: Colors.black.withOpacity(.2),
            ),
          ]),
      child: IconButton(
        onPressed: onTap,
        icon: selectedIndex == index ? secondIc : icon,
        color: Colors.black,
      ),
    );
  }
}
