import 'package:calori_food/pages/main_Screen.dart';
import 'package:calori_food/pages/start_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calori Food',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: StartScreen(),
    );
  }
}