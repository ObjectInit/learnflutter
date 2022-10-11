import 'package:flutter/material.dart';

class ConstraintsPrint extends StatelessWidget {
  final Widget child;
  const ConstraintsPrint({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
      
    return LayoutBuilder(
      builder: (BuildContext, BoxConstraints) { 
        assert(() { 
          print( "${context.findAncestorWidgetOfExactType<Widget>()}${BoxConstraints}" );
          return true;
        }()); 
        return GestureDetector( onTap: () => print(context.size), child: child); 
      }, 
    );
  }
}
