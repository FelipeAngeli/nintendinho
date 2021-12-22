import 'package:flutter/material.dart';

class MinusButton extends StatelessWidget {
  final double size;
  final double heigth;

  const MinusButton({
    Key? key,
    this.size = 20.83,
    this.heigth = 8.16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
