import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  const Category({
    @required this.id,
    @required this.title,
    this.color = Colors.deepOrangeAccent,
  });
}
// class Category {
//   final String categoryId;
//   final String categoryTitle;
//   final Color categoryBGColor;
//
//   const Category({
//     @required this.categoryId,
//     @required this.categoryTitle,
//     this.categoryBGColor = Colors.deepOrangeAccent,
//   });
// }
