import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JumpingMario extends StatelessWidget {
  final direction;
  final size;

  JumpingMario({this.direction, this.size});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: size,
        height: size,
        child: Image.asset('lib/images/marioJump.png'),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: size,
          height: size,
          child: Image.asset('lib/images/marioJump.png'),
        ),
      );
    }
  }
}
