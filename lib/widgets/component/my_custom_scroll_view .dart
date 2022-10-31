import 'package:flutter/material.dart';

class MyCustomScrollView extends StatefulWidget {
  const MyCustomScrollView({super.key});

  @override
  State<MyCustomScrollView> createState() => _MyCustomScrollViewState();
}

class _MyCustomScrollViewState extends State<MyCustomScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate((_, index) {
                return ListTile(title: Text("$index"));
              }, childCount: 60),
              itemExtent: 50),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate((_, index) {
                return ListTile(title: Text("$index"));
              }, childCount: 60),
              itemExtent: 50)
        ],
      ),
    );
  }
}
