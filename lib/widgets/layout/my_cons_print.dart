import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyConstraintsPrint extends StatelessWidget {
  const MyConstraintsPrint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(),
      body:ConstraintsPrint(
        child: Column(
          children: const [
           ConstraintsPrint(child: Text("Helo World"),)
          ],
        ),
      )
    );
  }
}