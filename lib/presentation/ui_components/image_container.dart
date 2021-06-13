// @dart=2.9
import 'package:flutter/material.dart';
import 'package:news_ui/data/news_list.dart';
import 'package:news_ui/models/news.dart';

class ImageContainer extends StatefulWidget {
  final News newsItem;
  final double height;

  ImageContainer({
    Key key,
    @required this.newsItem,
    @required this.height,
  }) : super(key: key);

  @override
  _ImageContainerState createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: widget.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: widget.newsItem.image,
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        // ),
        Transform.translate(
          offset: Offset(25, widget.height * 0.1),
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.newsItem.isBookMarked = !widget.newsItem.isBookMarked;
                // News z = newsList
                //     .firstWhere((element) => element.id == widget.newsItem.id);
                // print(z.isBookMarked);
                // if(widget.newsItem.isBookMarked){}
              });
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(16),
              child: !widget.newsItem.isBookMarked
                  ? Icon(Icons.bookmark_add_outlined)
                  : Icon(Icons.bookmark_added),
            ),
          ),
        ),
      ],
    );
  }
}
