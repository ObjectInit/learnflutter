import 'package:flutter/material.dart';

class MyAnimatedList extends StatefulWidget {
  const MyAnimatedList({super.key});

  @override
  State<MyAnimatedList> createState() => _MyAnimatedListState();
}

class _MyAnimatedListState extends State<MyAnimatedList> {
  final List<String> datas = List.generate(6, (index) => index.toString());
  final GlobalKey<AnimatedListState> animatedListStateKey =
      GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedList(
        key: animatedListStateKey,
        initialItemCount: datas.length,
        itemBuilder:
            (BuildContext context, int index, Animation<double> animation) {
          return FadeTransition(
            opacity: animation,
            child: ListTile( 
              title: Text(datas[index]),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  deleteItem(index);
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addItem();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void addItem() {
    datas.add("${datas.length + 1}");
    animatedListStateKey.currentState!.insertItem(datas.length - 1);
  }

  void deleteItem(int index) {
    setState(() {
      datas.removeAt(index);

      animatedListStateKey.currentState!.removeItem(index,
          (context, animation) {
        return FadeTransition(
          opacity: animation,
          child: ListTile( 
            title: Text(datas[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                deleteItem(index);
              },
            ),
          ),
        );
      });
    });
  }
}

class AnimatedListRoute extends StatefulWidget {
  const AnimatedListRoute({Key? key}) : super(key: key);

  @override
  _AnimatedListRouteState createState() => _AnimatedListRouteState();
}

class _AnimatedListRouteState extends State<AnimatedListRoute> {
  var data = <String>[];
  int counter = 5;

  final globalKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    for (var i = 0; i < counter; i++) {
      data.add('${i + 1}');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedList(
          key: globalKey,
          initialItemCount: data.length,
          itemBuilder: (
            BuildContext context,
            int index,
            Animation<double> animation,
          ) {
            //???????????????????????????????????????
            return FadeTransition(
              opacity: animation,
              child: buildItem(context, index),
            );
          },
        ),
        buildAddBtn(),
      ],
    );
  }

  // ???????????? ???+??? ?????????????????????????????????????????????
  Widget buildAddBtn() {
    return Positioned(
      child: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // ?????????????????????
          data.add('${++counter}');
          // ???????????????????????????????????????
          globalKey.currentState!.insertItem(data.length - 1);
          print('?????? $counter');
        },
      ),
      bottom: 30,
      left: 0,
      right: 0,
    );
  }

  // ???????????????
  Widget buildItem(context, index) {
    String char = data[index];
    return ListTile(
      //?????????????????????????????????Key
      key: ValueKey(char),
      title: Text(char),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        // ???????????????
        onPressed: () => onDelete(context, index),
      ),
    );
  }

  void onDelete(context, index) {
    // ?????????setState(() {
    globalKey.currentState!.removeItem(
      index,
      (context, animation) {
        // ???????????????????????????????????????animation.value ??????1??????0
        var item = buildItem(context, index);
        print('?????? ${data[index]}');
        data.removeAt(index);
        // ?????????????????????????????????????????? + ?????????????????????
        return FadeTransition(
          opacity: CurvedAnimation(
            parent: animation,
            //?????????????????????????????????
            curve: const Interval(0.5, 1.0),
          ),
          // ??????????????????????????????
          child: SizeTransition(
            sizeFactor: animation,
            axisAlignment: 0.0,
            child: item,
          ),
        );
      },
      duration: Duration(milliseconds: 200), // ??????????????? 200 ms
    );
  }
}
