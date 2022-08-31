import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyMushroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      child: Image.asset('lib/images/mushroom.png'),
    );
  }
}
