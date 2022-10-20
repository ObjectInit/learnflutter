import 'package:flutter/material.dart'; 
import 'package:learnflutter/commonwidget/menus_item.dart';
import 'package:learnflutter/widgets/extension/my_bezier.dart';
import 'package:learnflutter/widgets/extension/test.dart';

class ExtensionIndex extends StatelessWidget {
  const ExtensionIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          MyMenuItem(title: "二次贝塞尔曲线", builder:(context) => const MyBezier() ,),
          MyMenuItem(title: "专用测试", builder:(context) => const MyTest() ,)

        ],
      ),
    );
  }
}