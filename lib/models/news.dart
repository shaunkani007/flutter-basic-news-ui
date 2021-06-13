// @dart=2.9
import 'package:flutter/cupertino.dart';

class News {
  // ** MARK: constructor
  const News({
    @required id,
    @required summary,
    @required title,
    @required image,
  })  : _id = id,
        _summary = summary,
        _image = image,
        _title = title;

  // ** MARK: instance variables
  final int _id;
  final String _title;
  final String _summary;
  final AssetImage _image;

  // ** MARK: intance value getters
  int get id => this._id;
  String get title => this._title;
  String get summary => this._summary;
  AssetImage get image => this._image;
}
