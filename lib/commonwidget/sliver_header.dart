import 'package:flutter/material.dart';

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate{
  final double maxHeight;
  final double minHeight;
  final Widget child;

  SliverHeaderDelegate({required this.maxHeight, this.minHeight=0,required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    print("shrinkOffset[${this.hashCode}]:$shrinkOffset####overlapsContent:$overlapsContent");
      return child;
  }

  @override 
  double get maxExtent => maxHeight;

  @override 
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverHeaderDelegate oldDelegate) { 
     return oldDelegate.maxHeight!=maxHeight||oldDelegate.minHeight!=minHeight;
  }

}