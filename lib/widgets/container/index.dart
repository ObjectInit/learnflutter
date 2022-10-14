import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learnflutter/CommonWidget/menus_item.dart';
import 'package:learnflutter/widgets/container/my_clip.dart';
import 'package:learnflutter/widgets/container/my_padding.dart';

class ContainerWidgetsIndex extends StatelessWidget {
  const ContainerWidgetsIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          MyMenuItem(title: "Clip（剪裁）组件", builder:(context) => const MyClipWidget(),),
          MyMenuItem(title: "Padding组件", builder:(context) => const MyPadding(),)
        ],
      ),
    );
  }
}