import 'package:flutter/material.dart';

class HomerButton extends StatelessWidget {
  final double size;

  const HomerButton({
    Key? key,
    this.size = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xff8F8989),
        border: Border.all(
          width: size * 0.03,
          color: const Color(0xff732A23),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth * 0.8,
            height: constraints.maxHeight * 0.8,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff33383C),
            ),
            child: Icon(
              Icons.home,
              size: constraints.maxWidth * 0.6,
            ),
          );
        },
      ),
    );
  }
}
