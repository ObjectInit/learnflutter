import 'package:flutter/material.dart';

abstract class BaseScaffodWidget extends StatelessWidget {
  final Widget body;

  const BaseScaffodWidget({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Scaffold createScaffold() {
    return Scaffold(
      appBar: AppBar(),
      body: body,
    );
  }
}

class A {
  int? _age; 

  A(int age){
    this._age=age;
  }
}

class B extends A{
  B(int age):super(age);
   
}
 
 