import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyScroller extends StatefulWidget {
  const MyScroller({super.key});

  @override
  State<MyScroller> createState() => _MyScrollerState();
}

class _MyScrollerState extends State<MyScroller> {
  int num=0;
  @override
  Widget build(BuildContext context) {
    var s = "Hello World Are U Ok Hello World Are U Ok Hello World Are U Ok";
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Scrollbar(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                primary: false,
                child:
                    Column(children: s.split("").map((e) => Text(e)).toList()),
              ),
            ),
          ),
         
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: const [
                ListTile(
                  title: Text("你好"),
                ),
                ListTile(
                  title: Text("你好"),
                ),
                ListTile(
                  title: Text("你好"),
                ),
                ListTile(
                  title: Text("你好"),
                ),
                ListTile(
                  title: Text("你好"),
                ),
                ListTile(
                  title: Text("你好"),
                ),
                ListTile(
                  title: Text("你好"),
                ),
                ListTile(
                  title: Text("你好"),
                ),
                ListTile(
                  title: Text("你好"),
                ),
                ListTile(
                  title: Text("你好"),
                ),
              ],
            ),
          )
        ],
      ),
    
    );
  }
}

