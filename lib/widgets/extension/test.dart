import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/KeepAliveWrapper.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  bool isKeepAlive=true;
  String text="hello";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: mytest1(isKeepAlive: isKeepAlive,),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            text="hello 2";
            isKeepAlive=!isKeepAlive;
          });
        },
      ),
    );
  }
}


class MyTest2 extends StatefulWidget {
  final String text;
  const MyTest2({super.key, required this.text});

  @override
  State<MyTest2> createState() => _MyTest2State();
}

class _MyTest2State extends State<MyTest2> {

  @override
  void didUpdateWidget(covariant MyTest2 oldWidget) { 
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(widget.text),);
  }
}

class mytest1 extends StatelessWidget {
  final bool isKeepAlive;
  const mytest1({
    Key? key,   this.isKeepAlive=true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        print("build $index");
        return KeepAliveWrapper(isKeepAlive: isKeepAlive, child: ListTile(title: Text("$index")));
      },
    );
  }
}
