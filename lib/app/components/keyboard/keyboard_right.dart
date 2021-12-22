import 'package:flutter/material.dart';
import 'buttons/big_button.dart';
import 'buttons/button_group.dart';
import 'buttons/home_button.dart';
import 'buttons/plus_button.dart';
import 'buttons/arrow_widget.dart';
import 'buttons/button_theme.dart';
import 'buttons/letter_widget.dart';

class KeyboardRight extends StatefulWidget {
  const KeyboardRight({Key? key}) : super(key: key);

  @override
  State<KeyboardRight> createState() => _KeyboardRightState();
}

class _KeyboardRightState extends State<KeyboardRight> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(size.width * 0.032),
      child: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Align(
            child: PlusButton(
              size: size.width * 0.05,
            ),
            alignment: Alignment.topRight,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonGroup(
                  topChild: ButtTheme(
                    size: size.width * 0.06,
                    position: Position.up,
                    child: const LetterWidget(
                      text: Letter.X,
                    ),
                  ),
                  rightChild: const ButtTheme(
                    position: Position.right,
                    child: LetterWidget(
                      text: Letter.A,
                    ),
                  ),
                  downChild: const ButtTheme(
                    position: Position.down,
                    child: LetterWidget(
                      text: Letter.B,
                    ),
                  ),
                  leftChild: const ButtTheme(
                    position: Position.left,
                    child: LetterWidget(
                      text: Letter.Y,
                    ),
                  ),
                ),
                BigButton(
                  size: size.height * 0.08,
                ),
              ],
            ),
          ),
          Align(
            child: HomerButton(
              size: size.height * 0.04,
            ),
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }
}
