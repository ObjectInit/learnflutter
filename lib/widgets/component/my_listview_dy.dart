import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyListViewDynimac extends StatefulWidget {
  static String loadingTag = "#loadingtag#";

  MyListViewDynimac({Key? key}) : super(key: key);

  @override
  State<MyListViewDynimac> createState() => _MyListViewDynimacState();
}

class _MyListViewDynimacState extends State<MyListViewDynimac> {
  final List<String> words = [MyListViewDynimac.loadingTag];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        // physics: ClampingScrollPhysics(),
        itemExtent: 20,
        itemCount: words.length,
        itemBuilder: (context, index) {
          // print("length:${words.length}");
          // print(index);
          if (words[index] == MyListViewDynimac.loadingTag) {
            if (index >= 200 - 1) {
              return const Align(
                child: Text("没有更多数据了"),
              );
            }
            _getData();
            return const Align(
              child: FittedBox(
                  fit: BoxFit.contain,
                  child: ConstraintsPrint(child: CircularProgressIndicator())),
            );
          }
          // print(index);
          return Align(child: Text(words[index]));
        },
      ),
    );
  }

  void _getData() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      setState(() {
        var list =
            generateWordPairs().take(20).map((e) => e.asPascalCase).toList();
        words.insertAll(words.length - 1, list);
      });
    });
  }
}

dost1() async {
  return Future.delayed(Duration(seconds: 2)).then((value) => 2);
}
