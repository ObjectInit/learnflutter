import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/menus_item.dart';
import 'package:learnflutter/widgets/layout/my_align.dart';
import 'package:learnflutter/widgets/layout/my_cons_print.dart';

class LayoutWidgetsIndex extends StatelessWidget {
  const LayoutWidgetsIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            MyMenuItem(
              title: "Align",
              builder: (context) {
                return const MyAlign();
              },
            ),
            MyMenuItem(
              title: "约束打印",
              builder: (context) {
                return const MyConstraintsPrint();
              },
            )
          ],
        ));
  }
}
