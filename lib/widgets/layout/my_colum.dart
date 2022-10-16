import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyColum extends StatelessWidget {
  const MyColum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ConstrainedBox(
        constraints: BoxConstraints.tight(Size(100,100)),
        child: ColoredBox(
          color: Colors.blue,
          child: Column(
            mainAxisSize:MainAxisSize.min ,
            children: [
                ColoredBox(
                  color: Colors.yellow,
                  child: Align(  
                      child: ConstraintsPrint(child: Text("HelloHelloHelloHelloHelloHelloHelloHello")),
                    ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
