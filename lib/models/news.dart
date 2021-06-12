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
        _imageUrl = image,
        _title = title;

  // ** MARK: instance variables
  final int _id;
  final String _title;
  final String _summary;
  final String _imageUrl;

  // ** MARK: intance value getters
  int get id => this._id;
  String get title => this._title;
  String get summary => this._summary;
  String get image => this._imageUrl;
}