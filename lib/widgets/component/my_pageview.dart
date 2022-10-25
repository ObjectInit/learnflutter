import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) { 
    return PageView(
       
      allowImplicitScrolling: true,
      
      children: const [
        Page(
          text: "page 1",
        ),
        Page(
          text: "page 2",
        ),
        Page(
          text: "page 3",
        ),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  final String text;
  const Page2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    print("${text} build");

    return Container(
        color: Colors.white, child:   Center(child: Text(text)));
  }
}


class Page extends StatefulWidget {
  final String text;
  const Page({Key? key, this.text = ""}) : super(key: key);

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> with AutomaticKeepAliveClientMixin {

  @override
  void didUpdateWidget(covariant Page oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print("${widget.text} build");
    return Container(
        color: Colors.white, child:   Center(child: Text(widget.text)));
  }
  @override
  void dispose() {
    print("${widget.text} dispose");
    super.dispose();
  }
  
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
