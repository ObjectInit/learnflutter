import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ConstrainedBox(
          constraints: BoxConstraints.tight(Size(100, 100)),
          child: Align(child: ConstraintsPrint(child: Text("Hello")),),
        ));
  }
}
