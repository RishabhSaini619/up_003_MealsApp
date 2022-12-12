import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/models/model_data.dart';
import 'package:up_003_mealsapp/widgets/widget_category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MEAL\'S App',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: BasicData.map((categoryData) => CategoryItem(
              categoryData.id,
              categoryData.title,
              categoryData.color,
            )).toList(),
      ),
    );
  }
}
