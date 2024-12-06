import 'dart:async';

import 'package:flutter/material.dart';

class HomeAnimation extends StatefulWidget {
  const HomeAnimation({super.key});

  @override
  State<HomeAnimation> createState() => _HomeAnimationState();
}

class _HomeAnimationState extends State<HomeAnimation> {
  double width = 200;
  double height = 200;
  late Timer timer;
  bool isExpanded = true;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        isExpanded = !isExpanded;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome to my Flutter app",
                  style: TextStyle(fontSize: 25)),
              const SizedBox(height: 20),
              AnimatedContainer(
                width: isExpanded ? 100 : 200,
                height: isExpanded ? 100 : 200,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(),
              ),
            ],
          ),
        );
  }
}