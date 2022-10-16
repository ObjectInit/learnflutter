import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyDecoratedBox extends StatelessWidget {
  const MyDecoratedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.tight(const Size(100, 100)),
            child: const DecoratedBox(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, offset: Offset(3, 3), blurRadius: 8)
                  ],
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.yellow], stops: [0.3, 0.8]),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: ColoredBox(
                    color: Colors.red,
                    child: ConstraintsPrint(
                        child: Text(
                      "Hello World",
                      textAlign: TextAlign.center,
                    ))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
