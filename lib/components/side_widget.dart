import 'package:flutter/material.dart';

enum Side { left, right }

class SideWidget extends StatelessWidget {
  final Side side;
  final double width;
  final double height;
  final Widget? child;

  const SideWidget({
    Key? key,
    this.child,
    required this.side,
    this.width = 123.20,
    this.height = 257.39,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Decoration decoration;

    switch (side) {
      case Side.left:
        decoration = const BoxDecoration(
          color: Color(0xff00BDDD),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(90),
          ),
        );
        break;
      case Side.right:
        decoration = const BoxDecoration(
          color: Color(0xffFF5F53),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(90),
          ),
        );
        break;
      default:
    }

    return Container(
      width: width,
      height: height,
      decoration: decoration,
      child: child,
    );
  }
}
