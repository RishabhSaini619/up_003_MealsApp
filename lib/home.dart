import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/screen/screen_categories.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const CategoriesScreen();
  }
}
