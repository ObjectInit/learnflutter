import 'package:flutter/material.dart';

class MyTabBarView extends StatefulWidget {
  const MyTabBarView({super.key});

  @override
  State<MyTabBarView> createState() => _MyTabBarViewState();
}

class _MyTabBarViewState extends State<MyTabBarView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          physics: const ClampingScrollPhysics(),
          controller: _tabController,
          tabs: const [
            Tab(
              text: "新闻",
            ),
            Tab(
              text: "历史",
            ),
            Tab(
              text: "记录",
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: const [
        Text("新闻"),
        Text("历史"),
        Text("记录"),
      ]),
    );
  }
}
