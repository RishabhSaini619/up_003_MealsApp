import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/widget_category_item.dart';
import 'package:up_003_mealsapp/widget_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
    title: const Text('MealsApp'),
    centerTitle: true,
    ),
      body: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: BasicData.map((categoryData) => CategoryItem(
              categoryData.title,
              categoryData.color,
            )).toList(),
      ),
    );
  }
}
