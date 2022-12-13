import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Meal {
  final String mealId;
  final String mealTitle;
  final List<String> mealCategories;
  final String mealImageUrl;
  final List<String> mealIngredients;
  final List<String> mealSteps;
  final int mealDuration;
  final Complexity mealComplexity;
  final Affordability mealAffordability;
  final bool isMealGlutenFree;
  final bool isMealVegan;
  final bool isMealVegetarian;
  final bool isMealLactoseFree;

  const Meal({
    @required this.mealId,
    @required this.mealTitle,
    @required this.mealCategories,
    @required this.mealImageUrl,
    @required this.mealIngredients,
    @required this.mealSteps,
    @required this.mealDuration,
    @required this.mealComplexity,
    @required this.mealAffordability,
    @required this.isMealGlutenFree,
    @required this.isMealVegan,
    @required this.isMealVegetarian,
    @required this.isMealLactoseFree,
  });
}

enum Complexity {
  Simple,
  Challenging,
  Complex,
}

enum Affordability {
  Affordable,
  Luxurious,
  Pricey,
}
