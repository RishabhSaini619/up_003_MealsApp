import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryMealsId;
  final String categoryMealsTitle;

  const CategoryMealsScreen(this.categoryMealsId, this.categoryMealsTitle,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$categoryMealsTitle\'s",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'The Recipes For This Category',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
