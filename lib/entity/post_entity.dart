import 'package:flutter/cupertino.dart';

class PostEntity {
  final Widget widget;
  final String city;
  final String photo;
  final String description;

  PostEntity(
      {required this.widget,
      required this.city,
      required this.photo,
      required this.description});
}
