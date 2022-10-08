import 'package:flutter/material.dart';

class MyMenuItem extends StatelessWidget {
  final WidgetBuilder builder;
  final String title;
  const MyMenuItem({
    Key? key,
    required this.title,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_right),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: builder,
            ));
      },
    );
  }
}