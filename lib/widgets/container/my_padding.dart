import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyPadding extends StatelessWidget {
  const MyPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const ColoredBox(
              color: Colors.blue, child: Padding(padding: EdgeInsets.all(8))),
          const Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints.tight(const Size(100, 100)),
                child: ColoredBox(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: ConstraintsPrint(
                          child: Container(
                        color: Colors.yellow,
                        width: 150,
                        height: 150,
                      )),
                    )),
              ),
              const Expanded(
                  child: Text(
                "padding 遵从父级约束,减去自身padding后将约束传递给子组件,这里传递了紧约束",
              ))
            ],
          ),
          const Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox( 
                constraints: BoxConstraints.loose(const Size(100, 100)),
                child: ColoredBox(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        color: Colors.yellow,
                        width: 50,
                        height: 50,
                      ),
                    )),
              ),
              const Expanded(
                  child: Text(
                      "padding 遵从父级约束，减去自身padding后将约束传递给子组件,这里传递了松约束")),
                Expanded(
                child: ColoredBox(
                  color: Colors.yellow,
                  child: Align(
                    child: Text("1"),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
