import 'package:flutter/material.dart';

enum Lamp { lampOff, lampOn }

class LampWidget extends StatelessWidget {
  final double size;
  final Lamp lamp;

  const LampWidget({
    Key? key,
    this.size = 5.43,
    required this.lamp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Decoration decoration;

    switch (lamp) {
      case Lamp.lampOff:
        decoration = const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff222327),
        );
        break;
      case Lamp.lampOn:
        decoration = const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffB6EBA5),
        );
        break;
      default:
    }
    return Container(
      decoration: decoration,
      width: size,
      height: size,
    );
  }
}
