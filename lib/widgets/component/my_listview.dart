import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          MyState(
            num: num,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 20,
            cacheExtent: 100,
            // prototypeItem: ListTile(title: Text("1"),),
            itemBuilder: (context, index) {
              print("$index item 创建");
              return ConstraintsPrint(
                child: ListTile(
                  title: Text("$index"),
                ),
              );
            },
          )),
          Divider(color: Colors.green, thickness: 10),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("$index"),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return index % 2 == 0
                        ? Divider()
                        : Divider(
                            color: Colors.blue,
                          );
                  },
                  itemCount: 100))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            num++;
          });
        },
      ),
    );
  }
}

class MyState extends StatefulWidget {
  final int num;
  const MyState({super.key, required this.num});

  @override
  State<MyState> createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  int num = 0;

  @override
  void initState() {
    this.num = widget.num;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blue,
      child: Text("$num"),
    );
  }
}
