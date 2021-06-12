// @dart=2.9
import 'package:flutter/material.dart';
import 'package:news_ui/presentation/ui_components/carousal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Carousal(screenHeight: screenHeight),
      ),
    );
  }
}
