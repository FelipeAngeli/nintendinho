import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsetsGeometry? padding;
  final Widget? child;

  const Screen({
    Key? key,
    this.child,
    this.width = 331,
    this.height = 360,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: child,
    );
  }
}
