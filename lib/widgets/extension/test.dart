import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ClipRect(
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
              child: UnconstrainedBox(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(50, 50)),
              child: ColoredBox(
                color: Colors.blue,
                child: ConstraintsPrint(
                  child: UnconstrainedBox(
                      child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow.withOpacity(0.5),
                  )),
                ),
              ),
            ), 
          ),
          ClipRRect(
            child: Align(
              widthFactor: 0.5,
              heightFactor: 0.5,
              child: Container(
                color: Colors.yellow,
                width: 100,
                height: 100,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          ),
          const SizedBox(
            height: 10,
          ),
          ConstrainedBox(
            constraints: BoxConstraints.loose(const Size(50, 50)),
            child: ClipRect(
              child: Container(
                color: Colors.blue,
                width: 50,
                height: 50,
                child: FittedBox(
                    fit: BoxFit.cover,
                    child: ConstraintsPrint(
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.yellow.withOpacity(0.5),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
