import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Column(
        children:const [
          MyJust(),
          MyJust(),
          MyJust(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }
}

class MyJust extends StatefulWidget {
  const MyJust({super.key});

  @override
  State<MyJust> createState() => _MyJustState();
}

class _MyJustState extends State<MyJust> {

  @override
  void didUpdateWidget(covariant MyJust oldWidget) {
     print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("just build");
    return Container(
      color: Colors.blue,
      width: 50,
      height: 50,
    );
  }
}
