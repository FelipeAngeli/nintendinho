import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final double size;

  const BigButton({
    Key? key,
    this.size = 58,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff686D70),
            Color(0xff050F11),
          ],
        ),
        border: Border.all(width: size * 0.02),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth * 0.8,
          height: constraints.maxHeight * 0.8,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff050F11),
                Color(0xff686D70),
              ],
            ),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth * 0.9,
              height: constraints.maxHeight * 0.9,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: constraints.maxWidth * 0.02),
                color: Colors.white,
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff676A6F),
                    Color(0xff242625),
                  ],
                ),
              ),
            );
          }),
        );
      }),
    );
  }
}
