import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/sliver_header.dart';

class Mysliverheaderdelegate extends StatefulWidget {
  const Mysliverheaderdelegate({super.key});

  @override
  State<Mysliverheaderdelegate> createState() => _MysliverheaderdelegateState();
}

class _MysliverheaderdelegateState extends State<Mysliverheaderdelegate> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("demo"),
            ),
          ),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate((_, index) {
                return ListTile(
                  title: Text("$index"),
                );
              }, childCount: 15),
              itemExtent: 50),
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: SliverHeaderDelegate(
                  maxHeight: 60,
                  minHeight: 60,
                  child: Container(
                    color: Colors.yellow,
                    alignment: Alignment.center,
                    child: Text("ok"),
                  ))),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate((_, index) {
                return ListTile(
                  title: Text("$index"),
                );
              }, childCount: 15),
              itemExtent: 50),
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: SliverHeaderDelegate(
                  maxHeight: 60,
                  minHeight: 60,
                  child: Container(
                    color: Colors.yellow,
                    alignment: Alignment.center,
                    child: Text("ok"),
                  ))),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate((_, index) {
                return ListTile(
                  title: Text("$index"),
                );
              }, childCount: 15),
              itemExtent: 50),
              SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: SliverHeaderDelegate(
                  maxHeight: 60,
                  minHeight: 60,
                  child: Container(
                    color: Colors.yellow,
                    alignment: Alignment.center,
                    child: Text("ok"),
                  ))),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate((_, index) {
                return ListTile(
                  title: Text("$index"),
                );
              }, childCount: 15),
              itemExtent: 50),
        ],
      ),
    );
  }
}
