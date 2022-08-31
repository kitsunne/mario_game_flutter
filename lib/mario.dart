import 'dart:math';

import 'package:flutter/material.dart';

class MyMario extends StatelessWidget {
  final direction;
  final midRun;

  MyMario({this.direction, this.midRun});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: 50,
        height: 50,
        child: midRun
            ? Image.asset('lib/images/marioStand.png')
            : Image.asset('lib/images/marioWalk.png'),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: 50,
          height: 50,
          child: midRun
              ? Image.asset('lib/images/marioStand.png')
              : Image.asset('lib/images/marioWalk.png'),
        ),
      );
    }
  }
}
