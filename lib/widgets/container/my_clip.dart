import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyClipWidget extends StatelessWidget {
  const MyClipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Center(
              child: Text("Image 容器宽高会被约束(蓝色区域代表Image容器宽高),图片根据fit适应")),
          ClipOval(
            child: Image.network(
              "https://avatars.githubusercontent.com/u/22310718?v=4",
              width: 50,
            ),
          ),
          SizedBox(
            width: 200,
            height: 100,
            child: ColoredBox(
              color: Colors.blue,
              child: Image.network(
                "https://avatars.githubusercontent.com/u/22310718?v=4",
                // fit: BoxFit.fill,
                width: 50, // width 是设置容器的 不是设置图片的
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.loose(const Size(100, 300)),
            child: ColoredBox(
              color: Colors.blue,
              child: Image.network(
                "https://avatars.githubusercontent.com/u/22310718?v=4",
                // fit: BoxFit.contain,
                width: 100,
                height: 300,
                // width: 100,
                // width: 50,
              ),
            ),
          ),
          Row(
            children: [
              Align(
                alignment: Alignment.center,
                child: ConstraintsPrint(
                  child: Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
