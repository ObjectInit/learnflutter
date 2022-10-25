import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({super.key});

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ConstraintsPrint(
        child: Column(
          children: [
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                    childAspectRatio: 1.5),
                children: const [
                  ColoredBox(
                      color: Colors.grey,
                      child: Icon(
                        Icons.abc,
                      )),
                  ColoredBox(color: Colors.grey, child: Icon(Icons.abc)),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  ColoredBox(color: Colors.grey, child: Icon(Icons.abc)),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                ],
              ),
            ),
            const Divider(
              color: Colors.yellow,
              thickness: 6,
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent:
                      100, // 每行的项目数量为 区域大小/maxCrossAxisExtent -》 取整+1
                ),
                children: const [
                  ColoredBox(
                      color: Colors.grey,
                      child: Icon(
                        Icons.abc,
                      )),
                  ColoredBox(
                      color: Colors.grey,
                      child: ConstraintsPrint(child: Icon(Icons.abc))),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  ColoredBox(color: Colors.grey, child: Icon(Icons.abc)),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 abstract class B {

 }

 class A implements B{
  
 }