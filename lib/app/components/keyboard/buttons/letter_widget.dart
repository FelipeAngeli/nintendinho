import 'package:flutter/material.dart';

enum Letter { X, A, B, Y }

class LetterWidget extends StatelessWidget {
  final double size;
  final Color color;
  final Letter text;
  const LetterWidget(
      {Key? key,
      this.size = 28,
      this.color = Colors.white70,
      this.text = Letter.X})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var selectedLetter;
    switch (text) {
      case Letter.A:
        selectedLetter = 'A';
        break;
      case Letter.B:
        selectedLetter = 'B';
        break;
      case Letter.Y:
        selectedLetter = 'Y';
        break;
      default:
        selectedLetter = 'X';
    }

    return Container(
      alignment: Alignment.center,
      width: size,
      height: size,
      child: Text(
        selectedLetter,
        style: TextStyle(
          color: color,
          fontSize: size * 0.6,
        ),
      ),
    );
  }
}
