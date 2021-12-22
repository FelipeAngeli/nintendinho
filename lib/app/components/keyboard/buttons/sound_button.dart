import 'package:flutter/material.dart';

class SoundButton extends StatelessWidget {
  final double size;
  const SoundButton({
    Key? key,
    this.size = 23.55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF687075),
            Color(0xff324144),
          ],
        ),
      ),
      child: Center(
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth * 0.85,
            height: constraints.maxHeight * 0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff4A494E),
                  Color(0xff525157),
                ],
              ),
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              return Center(
                child: Container(
                  width: constraints.maxWidth * 0.75,
                  height: constraints.maxHeight * 0.75,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff182022),
                  ),
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}
