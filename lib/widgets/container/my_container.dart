import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            child: Container(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(3.14/2),
              transformAlignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.red, Colors.orange],
                  radius:9,
                  center: Alignment.topLeft
                ),
              ),
              child: Text("Hello"),
            ),
          )
        ],
      ),
    );
  }
}
