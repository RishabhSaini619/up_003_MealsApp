import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/models/model_basic_data.dart';
import 'package:up_003_mealsapp/widgets/widget_category_item.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = 'category-screen';

  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(

      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: basicCategoryData
          .map((categoryData) => CategoryItem(
                categoryData.id,
                categoryData.title,
                categoryData.color,
              ))
          .toList(),
    );
  }
}
