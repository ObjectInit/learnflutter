import 'package:flutter/material.dart'; 

class MyAlign extends StatelessWidget {
  const MyAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("蓝色代表Align容器占据的空间"),
            const Text("Align遵从约束，但是前提里面要有内容"),
            Divider(),
            Tooltip(
              triggerMode: TooltipTriggerMode.tap,
              showDuration: const Duration(seconds: 5),
              message: "Align 在遵循约束的同时，自己的大小尽可能大,可定位内部组件",
              child: ConstrainedBox(
                constraints: BoxConstraints.loose(const Size(300, 100)),
                child: const ColoredBox(
                  color: Colors.blue,
                  child: Align(
                    alignment: FractionalOffset(1, 1),
                    child: ColoredBox(
                        color: Colors.green,
                        child: Text(
                          "遵从松约束,不设置缩放因子，我可以占据更多空间",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
              ),
            ),
            Divider(),
            Tooltip(
              message:
                  "widthFactor 和 heightFactor 确定Align自身宽高相对子组件的缩放因子,但是当自身宽高被约束时,缩放因子无效",
              triggerMode: TooltipTriggerMode.tap,
              showDuration: const Duration(seconds: 10),
              child: ConstrainedBox(
                constraints: BoxConstraints.tight(const Size(100, 100)),
                child: const ColoredBox(
                  color: Colors.blue,
                  child: Align(
                    widthFactor: 2,
                    heightFactor: 2,
                    child: Text("遵从紧约束，缩放因子对我无效"),
                  ),
                ),
              ),
            ),
            Divider(),
            ColoredBox(
              color: Colors.blue,
              child: LayoutBuilder(builder: (context, c) {
                
                return Align(
                  child: Text(
                    "${c}虽然我可以占据更多空间,可是对于Colum的Infinity Height约束我却选择了适应内容高度（Infinity 的 高度约束应该就是对于这个想去占用更多空间的组件的一个枚举,想象一下如果是一个有限制范围0<h<600的Colum，我一个Align岂不是就把高度占满了,正是因为高度是Infinity,所以Align更加不能确定自己能够占用多少空间，所以选择适应内容）",
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }),
            ),
            Divider(),
            Tooltip(
              message: "遵从约束，只设置缩放因子为2，我是子容器的2倍",
              showDuration: const Duration(seconds: 10),
              triggerMode: TooltipTriggerMode.tap,
              child: ColoredBox(
                color: Colors.blue,
                child: Align(
                  widthFactor: 2,
                  heightFactor: 2,
                  child: Container(
                    color: Colors.yellow,
                    width: 50,
                    height: 50,
                    child: const Center(child: Text("点我")),
                  ),
                ),
              ),
            ),
            Divider(),
            Tooltip(
               message: "遵从约束，但是我会把父约束变为松约束",
              showDuration: const Duration(seconds: 10),
              triggerMode: TooltipTriggerMode.tap,
              child: ConstrainedBox(
                constraints: BoxConstraints.tight(Size(100,100)),
                child: ColoredBox(
                  color: Colors.blue,
                  child: Align(
                    child: LayoutBuilder(
                      builder: (context,c) { 
                        print(c);
                        return Container(
                          color: Colors.yellow, 
                          width: 50,
                          height: 50,
                        );
                      }
                    ),
                  ),
                ),
              ),
            ), 
          ],
        ),
      ),
    );
  }
}
