import 'package:flutter/material.dart';
import 'package:screens/screens/home.dart';
import 'package:screens/screens/login.dart';
import 'package:screens/screens/porfile.dart';

void main() {
  runApp(MyApp());
}

  final ColorScheme colorScheme =
      ColorScheme.fromSeed(seedColor: Colors.deepPurple);
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
          colorScheme: colorScheme,
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: colorScheme.primary,
              titleTextStyle: const TextStyle(
                fontSize: 25,
                color: Colors.white,
              )),
          scaffoldBackgroundColor: colorScheme.primaryContainer,
          textTheme: const TextTheme().copyWith(
            bodyMedium: TextStyle(
              color: colorScheme.onPrimaryContainer,
            ),
          )),
      home: const Login(),
    );
  }
}
