import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/models/model_basic_data.dart';
import 'package:up_003_mealsapp/widgets/widget_meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = 'category-meals';
  // final String categoryMealsId;
  // final String categoryMealsTitle;
  //
  const CategoryMealsScreen(
      // this.categoryMealsId, this.categoryMealsTitle,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryMealsId = routeArg['id'];
    final categoryMealsTitle = routeArg['title'];
    final categoryMeals = basicMealData.where((meals) {
      return meals.categories.contains(categoryMealsId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$categoryMealsTitle Dishes",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
