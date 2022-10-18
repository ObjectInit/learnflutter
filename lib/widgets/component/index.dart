import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/menus_item.dart';
import 'package:learnflutter/widgets/component/my_scaffold.dart';

class ComponentIndex extends StatelessWidget {
  const ComponentIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          MyMenuItem(
            title: "Scaffold",
            builder: (context) => const MyScaffold(),
          )
        ],
      ),
    );
  }
}
