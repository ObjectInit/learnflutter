import 'package:flutter/material.dart'; 

class MyAlign extends StatelessWidget {
  const MyAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.loose(const Size(100, 100)),
            child: const ColoredBox(
              color: Colors.blue,
              child: Align(
                child: Text("Hello World"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
