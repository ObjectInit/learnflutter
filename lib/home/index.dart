import 'package:flutter/material.dart';
import 'package:learnflutter/widgets/index.dart';
import 'package:learnflutter/commonwidget/menus_item.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("目录导航"),
      ),
      body: MyMenuItem(
        title: "widgets组件",
        builder: (BuildContext context) => const WidgetsIndex(),
      ),
    );
  }
}


