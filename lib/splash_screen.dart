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
    return Stack(
      children: [
        ColoredBox(
            color: Colors.blue[100]!,
            child: Lottie.asset(
              "assets/anim/splashscreen.json",
              fit: BoxFit.contain,
              width: double.infinity,
              height: double.infinity,
              controller: _controller,
              onLoaded: (p0) {
                _controller.forward().whenComplete(
                    () => Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return const HomePage();
                          },
                        )));
              },
            )),
        Positioned(
            right: 10,
            bottom: 10,
            child: SizedBox(
              width: 50,
              height: 50,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: Colors.grey.withOpacity(0.6),
                ),
                child: Center(
                  child: AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      int p = (_controller.value * 3) ~/ 1;
                      _controller.duration;
                      return GestureDetector(
                        onTapDown: (details) {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const HomePage();
                            },
                          ));
                        },
                        child: DefaultTextStyle(
                          style: const TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              color: Colors.white),
                          child: Text(
                            "跳过 ${3 - p}",
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
