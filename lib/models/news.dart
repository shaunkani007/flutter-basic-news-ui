// @dart=2.9
import 'package:flutter/cupertino.dart';

class News {
  // ** MARK: constructor
  News({
    @required id,
    @required summary,
    @required title,
    @required image,
    @required author,
  })  : _id = id,
        _summary = summary,
        _image = image,
        _author = author,
        _title = title;

  // ** MARK: instance variables
  final int _id;
  final String _title;
  final String _author;
  final String _summary;
  final AssetImage _image;
  var isBookMarked = false;

  // ** MARK: intance value getters
  int get id => this._id;
  String get title => this._title;
  String get summary => this._summary;
  AssetImage get image => this._image;
  String get author => this._author;
}
