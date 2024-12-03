import 'dart:async';

import 'package:flutter/material.dart';
import 'package:screens/screens/porfile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Porfile()));
              },
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
          title: const Text('Home'),
        ),
        body: Center(
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
        ),
      ),
    );
  }
}
