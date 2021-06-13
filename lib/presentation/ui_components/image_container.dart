// @dart=2.9
import 'package:flutter/material.dart';
import 'package:news_ui/models/news.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer(
      {Key key, @required this.newsItem, @required this.height})
      : super(key: key);

  final News newsItem;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: newsItem.image,
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        // ),
        Transform.translate(
          offset: Offset(25, height * 0.1),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.bookmark_outline,
              size: 50,
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }
}
