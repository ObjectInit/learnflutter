import 'package:flutter/material.dart';

class MyScrollController extends StatefulWidget {
  const MyScrollController({super.key});

  @override
  State<MyScrollController> createState() => _MyScrollControllerState();
}

class _MyScrollControllerState extends State<MyScrollController> {
  final ScrollController _controller = ScrollController(keepScrollOffset: true);
  bool isShowUpDownButton = false;
  int process = 0;
  @override
  void initState() {
    _controller.addListener(() {
      // print(_controller.offset);
      showOrHideUpDown();
    });
    super.initState();
  }

  void showOrHideUpDown() {
    if (_controller.offset > 500) {
      setState(() {
        isShowUpDownButton = true;
      });
    } else {
      setState(() {
        isShowUpDownButton = false;
      });
    }
  }

  @override
  void dispose() {
    print("dispose");

    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          double offset = notification.metrics.pixels;
          double allOffset = notification.metrics.maxScrollExtent;
          setState(() {
            process = ((offset / allOffset)*100).toInt();
          });
          
          return false;
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Scrollbar(
              child: ListView.builder(
                key: const PageStorageKey<String>('controllerA'),
                itemCount: 100,
                itemExtent: 100,
                controller: _controller,
                itemBuilder: (context, index) {
                  return ListTile(title: Text("当前$index"));
                },
              ),
            ),
            CircleAvatar(
              radius: 50,
              child: Text("$process%"),
            )
          ],
        ),
      ),
      floatingActionButton: isShowUpDownButton
          ? FloatingActionButton(
              onPressed: () {
                _controller.animateTo(0,
                    duration: const Duration(seconds: 2),
                    curve: Curves.bounceIn);
              },
              child: const Icon(Icons.arrow_upward),
            )
          : null,
    );
  }
}
