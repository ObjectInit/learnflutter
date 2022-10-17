import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyBezier extends StatelessWidget {
  const MyBezier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset("assets/images/16075459-cf42c00869beb95e.webp",width: 100,),
          Row(
            children: const [
              Text("Hello World"),
              Expanded(child: Text("Hello World"))
            ],
          )
        ],
      ),
    );
  }
}