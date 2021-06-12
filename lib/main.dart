// @dart=2.9
import 'package:flutter/material.dart';
import 'package:news_ui/presentation/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
