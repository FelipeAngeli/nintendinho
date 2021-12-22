import 'package:flutter/material.dart';

import '../app/components/keyboard/keyboard_left.dart';
import '../app/components/keyboard/keyboard_right.dart';
import '../app/components/keyboard/side_widget.dart';
import '../app/components/screen/lamp/lamp_left.dart';
import '../app/components/screen/lamp/lamp_right.dart';
import '../app/components/screen/logo/logo_screen.dart';
import '../app/components/screen/screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff4B5054),
              Color(0xff272B2E),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 25),
            Screen(
                width: size.width * 0.88,
                height: size.height * 0.53,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Logo(
                      size: size.width * 0.34,
                      color: const Color(0xffffffff),
                    );
                  },
                )),
            //const SizedBox(height: 40),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //lado esquerdo controle
                SideWidget(
                  width: size.width * 0.32,
                  height: size.height * 0.38,
                  side: Side.left,
                  child: const KeyboardLeft(),
                ),

                const LampLeft(),

                LayoutBuilder(
                  builder: (context, constraints) {
                    return Logo(
                      size: size.height * 0.07,
                      color: const Color(0xff000000),
                    );
                  },
                ),

                //lado direito controle
                const LampRight(),

                SideWidget(
                  width: size.width * 0.32,
                  height: size.height * 0.38,
                  side: Side.right,
                  child: const KeyboardRight(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
