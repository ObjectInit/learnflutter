import 'package:flutter/material.dart';

class MyMenuItem extends StatelessWidget {
  final WidgetBuilder builder;
  final String title;
  final String? subTitle;
  const MyMenuItem({
    Key? key,
    required this.title,
    required this.builder, this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: subTitle==null?null:Text(subTitle??""),
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