import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/menus_item.dart';
import 'package:learnflutter/widgets/container/index.dart';
import 'package:learnflutter/widgets/layout/index.dart';

 
class WidgetsIndex extends StatelessWidget {
  const WidgetsIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("widgets组件"),
      ),
      body: ListView(
        children: [
          MyMenuItem(
            title: "布局类widgets",
            subTitle: "布局类容器一般不可以直接给宽高，它的大小要么随内容，要么占满",
            builder: (context) => const LayoutWidgetsIndex(),
          ),
          MyMenuItem(
              title: "容器类widgets",
              builder: (context) => const ContainerWidgetsIndex()),
              
        ],
      ),
    );
  }
}
