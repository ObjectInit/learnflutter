import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learnflutter/commonwidget/menus_item.dart';
import 'package:learnflutter/extension/my_bezier.dart';

class ExtensionIndex extends StatelessWidget {
  const ExtensionIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          MyMenuItem(title: "二次贝塞尔曲线", builder:(context) => const MyBezier() ,)
        ],
      ),
    );
  }
}