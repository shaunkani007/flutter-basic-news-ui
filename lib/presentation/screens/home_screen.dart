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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFCEBF96),
              Color(0xFFFCE8B6),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [Color(0xFFD3D3D3), Color(0xFFFEFEFE)],
                ),
              ),
              child: Carousal(screenHeight: screenHeight),
            ),
          ),
        ),
      ),
    );
  }
}


//  #D1913C to #FFD194
// 