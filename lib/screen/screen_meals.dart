import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/models/model_basic_data.dart';
import 'package:up_003_mealsapp/widgets/widget_meal_item.dart';

class MealsScreen extends StatelessWidget {
  static const routeName = 'meal-screen';

  const MealsScreen({Key key}) : super(key: key);

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
        children: basicMealData
            .map(
              (mealData) => MealItem(
                mealData.mealId,
                mealData.mealTitle,
              ),
            )
            .toList(),
      ),
    );
  }
}
