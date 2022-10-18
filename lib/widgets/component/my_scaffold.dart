import 'package:flutter/material.dart';
import 'package:learnflutter/commonwidget/constraints_print.dart';

class MyScaffold extends StatefulWidget {
  const MyScaffold({super.key});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold>
    with SingleTickerProviderStateMixin {
  int selectIndel = 0;
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.newspaper),
              text: "新闻",
            ),
            Tab(
              icon: Icon(Icons.history),
              text: "历史",
            )
          ],
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              context.findAncestorStateOfType<ScaffoldState>()!.openDrawer();
            },
          );
        }),
        title: const Text("标题"),
        actions: [
          Builder(builder: (context) {
            return IconButton(
              onPressed: () => context
                  .findAncestorStateOfType<ScaffoldState>()!
                  .openEndDrawer(),
              icon: const Icon(Icons.menu),
            );
          })
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyBottomNavBar2(),
      body: Column(),
      drawer: MediaQuery.removePadding(
        removeTop: false,
        context: context,
        child: Drawer(
          elevation: 1,
          child: MediaQuery.removePadding(
            removeTop: false,
            context: context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/images/myimg.jfif",
                          width: 100,
                        ),
                      ),
                      const Text("Code.Liu"),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text("设置"),
                      ),
                      ListTile(
                        leading: Icon(Icons.manage_accounts),
                        title: Text("账号管理"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      endDrawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class MyBottomNavBar1 extends StatelessWidget {
  const MyBottomNavBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          SizedBox(),
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        ],
      ),
    );
  }
}

class MyBottomNavBar2 extends StatefulWidget {
  @override
  State<MyBottomNavBar2> createState() => _MyBottomNavBar2State();
}

class _MyBottomNavBar2State extends State<MyBottomNavBar2> {
  int selectIndel = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          label: "首页",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(label: "我的", icon: Icon(Icons.home)),
      ],
      // fixedColor: Colors.blue,
      currentIndex: selectIndel,
      selectedItemColor: Colors.blue,
      onTap: (value) => setState(() {
        selectIndel = value;
      }),
    );
  }
}
