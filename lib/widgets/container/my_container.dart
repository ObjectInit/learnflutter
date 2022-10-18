import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Image myimg = Image.asset(
      "assets/images/myimg.jfif",
      width: 60,
    );
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                myimg,
                ClipOval(child: myimg),
                ClipRRect(
                  child: myimg,
                  borderRadius: BorderRadius.circular(5),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      child: myimg,
                      widthFactor: 0.1,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRect(
                  child: Align(
                    widthFactor: 0.5,
                    child: myimg,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ColoredBox(
                  color: Colors.yellow,
                  child: ClipPath(
                      clipper: MyClipper(),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      )),
                )
              ],
            ),
          ),
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 50);

    var controllerPoint = Offset(0, 100);
    var endPoint = Offset(50, 100);
    path.quadraticBezierTo(
        controllerPoint.dx, controllerPoint.dy, endPoint.dx, endPoint.dy);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
