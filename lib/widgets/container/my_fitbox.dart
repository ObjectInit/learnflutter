import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyFittedBox extends StatelessWidget {
  const MyFittedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // ColoredBox(
          //   color: Colors.blue,
          //   child: ConstrainedBox(
          //     constraints: BoxConstraints.loose(const Size(100, 100)),
          //     child: UnconstrainedBox(
          //       // fit: BoxFit.none,
          //       child: Container(
          //         width: 150,
          //         height: 150,
          //         color: Colors.yellow.withOpacity(0.5),
          //       ),
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 80,
          ),
          ColoredBox(
            color: Colors.blue,
            child: ConstrainedBox(
              constraints: BoxConstraints.loose(const Size(100, 100)),
              child: ColoredBox(
                color: Colors.black,
                child: FittedBox(
                  fit: BoxFit.none,
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.yellow.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          FittedBox(
            child: ConstraintsPrint(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(" 90000000000000000000 "),
                  Text(" 90000000000000000000 "),
                  Text(" 90000000000000000000 "),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          MySingleFitBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(" 90000000000000000000 "),
                Text(" 90000000000000000000 "),
                Text(" 90000000000000000000 "),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SingleLineFittedBox2(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(" 90000000000000000000 "),
                Text(" 90000000000000000000 "),
                Text(" 90000000000000000000 "),
              ],
            ),
          ),
          Expanded(
              child: FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    width: 100,
                    height: 500,
                    color: Colors.green,
                  )))
        ],
      ),
    );
  }
}

class MySingleFitBox extends StatelessWidget {
  final Widget? child;
  const MySingleFitBox({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) {
        return FittedBox(
          child: child,
        );
      },
    );
  }
}

class SingleLineFittedBox2 extends StatelessWidget {
  const SingleLineFittedBox2({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return FittedBox(
          child: ConstrainedBox(
            constraints: constraints.copyWith(
              minWidth: constraints.maxWidth,
              maxWidth: double.infinity,
              //maxWidth: constraints.maxWidth
            ),
            child: ConstraintsPrint(child: child!),
          ),
        );
      },
    );
  }
}
