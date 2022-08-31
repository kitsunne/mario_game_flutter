import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JumpingMario extends StatelessWidget {
  final direction;

  JumpingMario({this.direction});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: 50,
        height: 50,
        child: Image.asset('lib/images/marioJump.png'),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: 50,
          height: 50,
          child: Image.asset('lib/images/marioJump.png'),
        ),
      );
    }
  }
}
