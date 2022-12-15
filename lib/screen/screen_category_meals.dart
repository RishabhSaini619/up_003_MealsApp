import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/models/model_basic_data.dart';
import 'package:up_003_mealsapp/models/model_meal.dart';
import 'package:up_003_mealsapp/widgets/widget_meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = 'category-meals';

  //
  const CategoryMealsScreen(
      // this.categoryMealsId, this.categoryMealsTitle,
      {Key key})
      : super(key: key);

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryMealTitle;
  List<Meal> displayMeals;

  @override
  void ramoveMealItem(String mealId) {
    setState(() {
      displayMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  void didChangeDependencies() {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryMealsId = routeArg['id'];
    displayMeals = basicMealData.where((meals) {
      return meals.categories.contains(categoryMealsId);
    }).toList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dishes",
          // "$categoryMealTitle Dishes",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: displayMeals[index].id,
            title: displayMeals[index].title,
            imageUrl: displayMeals[index].imageUrl,
            duration: displayMeals[index].duration,
            complexity: displayMeals[index].complexity,
            affordability: displayMeals[index].affordability,
            removeMealItem: ramoveMealItem,
          );
        },
        itemCount: displayMeals.length,
      ),
    );
  }
}
