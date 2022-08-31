import 'dart:math';

import 'package:flutter/material.dart';

class MyMario extends StatelessWidget {
  final direction;
  final midRun;
  final size;

  MyMario({this.direction, this.midRun, this.size});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: size,
        height: size,
        child: midRun
            ? Image.asset('lib/images/marioStand.png')
            : Image.asset('lib/images/marioWalk.png'),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: size,
          height: size,
          child: midRun
              ? Image.asset('lib/images/marioStand.png')
              : Image.asset('lib/images/marioWalk.png'),
        ),
      );
    }
  }
}
