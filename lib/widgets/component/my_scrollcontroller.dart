import 'package:flutter/material.dart';

class MyScrollController extends StatefulWidget {
  const MyScrollController({super.key});

  @override
  State<MyScrollController> createState() => _MyScrollControllerState();
}

class _MyScrollControllerState extends State<MyScrollController> {
  ScrollController _controller = new ScrollController();
  @override
  void initState() { 
    _controller.addListener(() { 
      print(_controller.offset);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemExtent: 100,
        controller: _controller,
        itemBuilder: (context, index) {
          return ListTile(title: Text("当前$index"));
        },
      ),
    );
  }
}
