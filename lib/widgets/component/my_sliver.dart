import 'package:flutter/material.dart';

class MySliver extends StatelessWidget {
  const MySliver({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 250,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.asset(
                "assets/images/myimg.jfif",
                fit: BoxFit.cover,
              ),
              title: const Text("Demo"),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 10),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(child: Text("$index"));
              }, childCount: 20),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
            ),
          ),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return ListTile(title: Text("$index"));
              }, childCount: 40),
              itemExtent: 50)
        ],
      ),
    );
  }
}
