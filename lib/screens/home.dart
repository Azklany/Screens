import 'package:flutter/material.dart';
import 'package:screens/screens/porfile.dart';
import 'package:screens/widgets/home_animation.dart';
import 'package:screens/widgets/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget content = const HomeAnimation();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: const Drawer(),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                if (index == 0) {
                  setState(() {
                    content = const HomeAnimation();
                    currentIndex = index;
                  });
                } else {
                  setState(() {
                    currentIndex = index;
                    content = const Search();
                  });
                }
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
              ]),
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
          body: content),
    );
  }
}
