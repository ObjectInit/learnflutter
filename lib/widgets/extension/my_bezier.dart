import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyBezier extends StatelessWidget {
  const MyBezier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset(
            "assets/images/16075459-cf42c00869beb95e.webp",
            width: 100,
          ),
          Row(
            children: const [
              Text("Hello World"),
              Expanded(child: Text("Hello World"))
            ],
          ),
          ColoredBox(
            color: Colors.yellow,
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(Size(200,200)),
              child: ClipRect(
                clipper: MyClipper(),
                child: ConstraintsPrint(
                  child: Container( 
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
          ), 
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {

  @override
  Rect getClip(Size size) {
    var path=Path();
    var offSet=Offset(10,10);
    return Rect.fromLTWH(offSet.dx, offSet.dy, 10, 10);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}