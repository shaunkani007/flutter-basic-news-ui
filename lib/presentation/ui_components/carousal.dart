// @dart=2.9
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_ui/data/news_list.dart';

import 'news_item.dart';

class Carousal extends StatelessWidget {
  const Carousal({
    Key key,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        scrollDirection: Axis.vertical,
        height: screenHeight,
        viewportFraction: 1,
      ),
      items: newsList
          .map((e) => Builder(
              builder: (ctx) => NewsItem(newsItem: e, height: screenHeight)))
          .toList(),
    );
  }
}
