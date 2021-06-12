// @dart=2.9
import 'package:cached_network_image/cached_network_image.dart';
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
    return Container(
      child: CachedNetworkImage(
        height: height,
        fit: BoxFit.fitHeight,
        imageUrl: newsItem.image,
        progressIndicatorBuilder: (
          context,
          url,
          downloadProgress,
        ) =>
            Center(
          child: CircularProgressIndicator(
            value: downloadProgress.progress,
          ),
        ),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
