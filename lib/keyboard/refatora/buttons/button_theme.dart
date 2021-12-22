import 'package:flutter/material.dart';
import 'package:nintendinho/keyboard/refatora/buttons/arrow_widget.dart';

class ButtTheme extends StatelessWidget {
  final Color darkerColor;
  final Color darkColorBig;
  final Color lighterColor;
  final double size;
  final Widget? child;
  const ButtTheme({
    Key? key,
    this.darkerColor = const Color(0xff686D70),
    this.darkColorBig = const Color(0xff7B8287),
    this.lighterColor = const Color(0xff050F11),
    this.size = 84,
    this.child,
    required Position position,
    color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [darkColorBig, lighterColor],
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth * 0.90,
            height: constraints.maxHeight * 0.90,
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [lighterColor, darkerColor],
              ),
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              return SizedBox(
                height:
                    constraints.maxHeight * 1.0, //centralizar letras e setas
                width: constraints.maxWidth * 1.0,
                child: child,
              );
            }),
          );
        },
      ),
    );
  }
}
