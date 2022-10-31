import 'package:flutter/material.dart';
import 'package:learnflutter/widgets/component/scrollwidgets/my_sliver.dart';

import '../../../CommonWidget/menus_item.dart';

class MyScrollerWidgetIndex extends StatelessWidget {
  const MyScrollerWidgetIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        MyMenuItem(
            builder: (BuildContext context) {
              return const MySliver();
            },
            title: 'Sliver实现')
      ]),
    );
  }
}
