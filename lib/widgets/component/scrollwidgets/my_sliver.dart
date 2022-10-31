 

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MySliver extends StatelessWidget {
  const MySliver({super.key});

  @override
  Widget build(BuildContext context) {
     
    return Material(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers:  [

        ],
      ),
    );
  }
}


class SliverFlexibleHeader extends SingleChildRenderObjectWidget{
  @override
  RenderObject createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    throw UnimplementedError();
  }

}

// class  RenderSliverFlexibleHeader extends RenderSliverSingleBoxAdapter{

// }