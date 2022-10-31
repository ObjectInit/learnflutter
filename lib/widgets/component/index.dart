import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/menus_item.dart';
import 'package:learnflutter/widgets/component/my_animatedlist.dart';
import 'package:learnflutter/widgets/component/my_custom_scroll_view%20.dart';
import 'package:learnflutter/widgets/component/my_gridview.dart';
import 'package:learnflutter/widgets/component/my_listview_dy.dart';
import 'package:learnflutter/widgets/component/my_pageview.dart';
import 'package:learnflutter/widgets/component/my_scaffold.dart';
import 'package:learnflutter/widgets/component/my_scroll.dart';
import 'package:learnflutter/widgets/component/my_scrollcontroller.dart';
import 'package:learnflutter/widgets/component/my_sliver.dart';
import 'package:learnflutter/widgets/component/my_sliverheaderdelegate.dart';
import 'package:learnflutter/widgets/component/my_tabbar_view.dart';
import 'package:learnflutter/widgets/component/scrollwidgets/index.dart';

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
            title: "滚动相关",
            builder: (context) => const MyScrollerWidgetIndex(),
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
            builder: (context) => MyListViewDynimac(),
          ),
          MyMenuItem(
            title: "ScrollController",
            builder: (context) => const MyScrollController(),
          ),
          MyMenuItem(
            title: "AnimatedList",
            builder: (context) => const MyAnimatedList(),
          ),
          MyMenuItem(
            title: "GridView",
            builder: (context) => const MyGridView(),
          ),
          MyMenuItem(
            title: "PageView",
            builder: (context) => const MyPageView(),
          ),
          MyMenuItem(
            title: "可滚动组件子项缓存",
            builder: (context) => const MyPageView(),
          ),
          MyMenuItem(
            title: "TabBarView",
            builder: (context) => const MyTabBarView(),
          ),
          MyMenuItem(
            title: "MyCustomScrollView",
            builder: (context) => const MyCustomScrollView(),
          ),
          MyMenuItem(
            title: "MySliver",
            builder: (context) => const MySliver(),
          ),
          MyMenuItem(
            title: "Mysliverheaderdelegate",
            builder: (context) => const Mysliverheaderdelegate(),
          )
        ],
      ),
    );
  }
}
