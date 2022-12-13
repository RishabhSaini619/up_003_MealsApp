import 'package:flutter/material.dart';

class Category {
  final String categoryId;
  final String categoryTitle;
  final Color categoryBGColor;

  const Category({
    @required this.categoryId,
    @required this.categoryTitle,
    this.categoryBGColor = Colors.deepOrangeAccent,
  });
}
