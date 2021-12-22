import 'package:flutter/material.dart';

import 'package:nintendinho/components/lamp.dart';

class LampRight extends StatefulWidget {
  const LampRight({Key? key}) : super(key: key);

  @override
  _KeyboardState createState() => _KeyboardState();
}

class _KeyboardState extends State<LampRight> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ignore: avoid_unnecessary_containers
    return SizedBox(
      height: size.height * 0.06,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          LampWidget(
            lamp: Lamp.lampOff,
          ),
          LampWidget(
            lamp: Lamp.lampOff,
          ),
          LampWidget(
            lamp: Lamp.lampOff,
          ),
          LampWidget(
            lamp: Lamp.lampOff,
          ),
        ],
      ),
    );
  }
}
