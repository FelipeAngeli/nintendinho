import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  final double size;
  final double heigth;

  const PlusButton({
    Key? key,
    this.size = 19,
    this.heigth = 6.34,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: size,
          height: heigth,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff4A494E),
                Color(0xff525157),
              ],
            ),
          ),
        ),
        RotatedBox(
          quarterTurns: 1,
          child: Container(
            width: size,
            height: heigth,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff4A494E),
                  Color(0xff525157),
                  // Colors.red
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
