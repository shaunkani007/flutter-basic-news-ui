// @dart=2.9
import 'package:flutter/material.dart';
import 'package:news_ui/models/news.dart';

import 'author.dart';
import 'image_container.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({Key key, @required this.height, @required this.newsItem})
      : super(key: key);

  final double height;
  final News newsItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ImageContainer(
            newsItem: newsItem,
            height: height * 0.3,
          ),
        ),
        Spacer(),
        Author(height: height * 0.03, newsItem: newsItem),
        Spacer(),
        Text(
          newsItem.title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            newsItem.summary,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            textAlign: TextAlign.justify,
            // overflow: TextOverflow.fade,
          ),
        ),
        Spacer()
      ],
    );
  }
}
