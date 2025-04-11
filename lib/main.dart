import 'package:flutter/material.dart';
import 'package:sudoku/screens/home_screen.dart';

import 'theme/theme.dart';

//main function is the main entry point of the app
void main() {
  //MyApp becomes the root of the widget tree of our application
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sudoku',
      theme: themeData,
      home: const HomeScreen(),
    );
  }
}
