import 'package:flutter/material.dart';

enum Position { left, down, right, up }

class ArrowWidget extends StatelessWidget {
  final Position position; //  rever
  final double size;
  final Color iconColor;
  const ArrowWidget({
    Key? key,
    this.position = Position.up,
    this.size = 28,
    this.iconColor = const Color(0xff182022),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: position.index,
      child: FittedBox(
        child: Icon(
          Icons.play_arrow,
          size: size * 0.6,
          color: iconColor,
        ),
      ),
    );
  }
}
