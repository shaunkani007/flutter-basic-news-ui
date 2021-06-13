// @dart=2.9
import 'package:flutter/material.dart';
import 'package:news_ui/models/news.dart';

class Author extends StatelessWidget {
  const Author({
    Key key,
    @required this.height,
    @required this.newsItem,
  }) : super(key: key);

  final double height;
  final News newsItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 10,
          ),
          child: Image(
            image: AssetImage(
              'assets/images/business_man.png',
            ),
            height: height,
            fit: BoxFit.fitHeight,
            // size: 20,
          ),
        ),
        Text(
          newsItem.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
