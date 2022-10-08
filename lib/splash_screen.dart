import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
        color: Colors.blue[100]!,
        child: Lottie.asset(
          "assets/anim/splashscreen.json",
          fit: BoxFit.contain,
          width: double.infinity,   
          height: double.infinity,
          controller: _controller,
          onLoaded: (p0) {
            _controller
                .forward()
                .whenComplete(() => Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const HomePage();
                      },
                    )));
          },
        ));
  }
}
