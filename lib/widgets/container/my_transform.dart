import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyTransForm extends StatelessWidget {
  const MyTransForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColoredBox(
                color: Colors.blue,
                child: Transform(
                  alignment: Alignment.centerRight,
                  transform: Matrix4.skewY(pi / 4),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.yellow,
                    child: const Text("Hello World"),
                  ),
                ),
              ),
              const Divider(),
              Row(
                children: [
                  ColoredBox(
                    color: Colors.blue,
                    child: Transform(
                      transform: Matrix4.translationValues(-10, -10, 0),
                      child: const Text("hello world"),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ColoredBox(
                      color: Colors.blue,
                      child: Transform.rotate(
                          angle: pi / 2, child: const Text("hello world"))),
                  const SizedBox(
                    width: 20,
                  ),
                  ColoredBox(
                      color: Colors.blue,
                      child: Transform.scale(
                          scale: 2, child: const Text("Hello"))),
                  const SizedBox(
                    width: 20,
                  ),
                  ColoredBox(
                      color: Colors.blue,
                      child: Transform.scale(scale: 2, child: const Text("你"))),
                  const Text("好"),
                ],
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
                ColoredBox(color: Colors.blue, child: Transform.translate(offset: const Offset(10,10), child: Transform.rotate(angle: pi/2, child: Text("hello")))),

                 const SizedBox(
                height: 20,
              ),
                ColoredBox(color: Colors.blue, child: Transform.rotate(angle: pi/2, child: Transform.translate(offset:Offset(10,10), child: Text("hello"))))
            ],
          ),
        ));
  }
}
