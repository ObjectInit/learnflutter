import 'package:flutter/material.dart';

class MyPadding extends StatelessWidget {
  const MyPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ColoredBox(color: Colors.blue,
          child: Padding(padding: EdgeInsets.all(8)))
        ],
      ),
    );
  }
}
