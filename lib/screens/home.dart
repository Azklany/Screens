import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double width = 200;
  double height = 200;

  @override
  void initState() {
    onEnd();
    super.initState();
  }

  void onEnd() {
    setState(() {
      width = width == 200 ? 100 : 200;
      height = height == 200 ? 100 : 200;
    });
  }

  @override
  Widget build(BuildContext context) {
    onEnd();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
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
            children: [
              const Text("Welcome to my Flutters app",
                  style: TextStyle(fontSize: 25)),
              const SizedBox(height: 20),
              AnimatedContainer(
                width: width,
                height: height,
                onEnd: onEnd,
                duration: const Duration(milliseconds: 2000),
                child: const FlutterLogo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
