import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyconstraintBox extends StatelessWidget {
  const MyconstraintBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.tight(const Size(100, 100)),
            child:   Align(
                alignment: Alignment.center,
                child: ConstraintsPrint(
                    child: ColoredBox(
                        color: Colors.blue,
                        child: ConstrainedBox(
                          constraints: BoxConstraints.tight(const Size(100,100)),
                          child: const Text(
                            "Hello WorldHello World",
                            textAlign: TextAlign.center,
                          ),
                        )))),
          ),
        ],
      ),
    );
  }
}
