import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/menus_item.dart';
import 'package:learnflutter/widgets/component/my_listview_dy.dart';
import 'package:learnflutter/widgets/component/my_scaffold.dart';
import 'package:learnflutter/widgets/component/my_scroll.dart';
import 'package:learnflutter/widgets/component/my_scrollcontroller.dart';

import 'my_listview.dart'; 

class ComponentIndex extends StatelessWidget {
  const ComponentIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          MyMenuItem(
            title: "Scaffold",
            builder: (context) => const MyScaffold(), 
          ),
          MyMenuItem(
            title: "Scroller",
            builder: (context) => const MyScroller(),
          ),
          MyMenuItem(
            title: "ListView",
            builder: (context) => const MyListView(),
          ),
           MyMenuItem(
            title: "ListView动态",
            builder: (context) =>   MyListViewDynimac(),
          ),
           MyMenuItem(
            title: "ScrollController",
            builder: (context) =>  const MyScrollController(),
          )
        ],
      ),
    );
  }
}
