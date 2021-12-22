import 'package:flutter/material.dart';
import 'buttons/big_button.dart';
import 'buttons/button_group.dart';

import 'buttons/minus_button.dart';

import 'buttons/sound_button.dart';
import 'buttons/arrow_widget.dart';
import 'buttons/button_theme.dart';

class KeyboardLeft extends StatelessWidget {
  const KeyboardLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.width * 0.032), //mexi
      child: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Align(
            child: MinusButton(
              size: size.width * 0.05,
            ),
            alignment: Alignment.topLeft,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BigButton(
                  size: size.height * 0.08,
                ),
                ButtonGroup(
                  topChild: ButtTheme(
                    size: size.width * 0.07,
                    position: Position.up,
                    child: const ArrowWidget(
                      position: Position.up,
                    ),
                  ),
                  rightChild: const ButtTheme(
                      position: Position.right,
                      child: ArrowWidget(
                        position: Position.left,
                      )),
                  downChild: const ButtTheme(
                      position: Position.down,
                      child: ArrowWidget(
                        position: Position.down,
                      )),
                  leftChild: const ButtTheme(
                      position: Position.left,
                      child: ArrowWidget(
                        position: Position.right,
                      )),
                ),
              ],
            ),
          ),
          Align(
            child: SoundButton(
              size: size.height * 0.03,
            ),
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }
}
