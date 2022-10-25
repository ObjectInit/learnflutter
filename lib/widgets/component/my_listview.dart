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
          Expanded(
              child: ListView.builder(
            itemCount: 20,
            cacheExtent: 100,
            // prototypeItem: ListTile(title: Text("1"),),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("$index"),
              );
            },
          )),
          const Divider(color: Colors.green, thickness: 10),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("$index"),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return index % 2 == 0
                        ? const Divider()
                        : const Divider(
                            color: Colors.blue,
                          );
                  },
                  itemCount: 100)),
          const Divider(color: Colors.green, thickness: 10),
          Expanded(
              child: Column(
            children: [
              const ListTile(
                title: Text("标题头"),
              ),
              Expanded(
                child: ListView.builder(
                  addAutomaticKeepAlives: true,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    print("$index item builder");
                    return ListTile(
                    
                    title: MyState(
                      num: index,
                    ),
                  );
                  },
                ),
              )
            ],
          )),
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

class _MyStateState extends State<MyState> with AutomaticKeepAliveClientMixin {
  int num = 0;

  @override
  void initState() {
    this.num = widget.num;
    super.initState();
  }

  @override
  void dispose() {
    print("$num dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print("$num build $hashCode");
    return Container(
      width: 50,
      height: 50,
      color: Colors.yellow,
      child: Text("$num"),
    );
  }
  
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
