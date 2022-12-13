import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Meal {
  final String id;
  final String title;
  final List<String> categories;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Meal ({
    @required this.id,
    @required this.title,
    @required this.categories,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.isLactoseFree,
  });
}

//class Meal {
//   final String mealId;
//   final String mealTitle;
//   final List<String> mealCategories;
//   final String mealImageUrl;
//   final List<String> mealIngredients;
//   final List<String> mealSteps;
//   final int mealDuration;
//   final Complexity mealComplexity;
//   final Affordability mealAffordability;
//   final bool isMealGlutenFree;
//   final bool isMealVegan;
//   final bool isMealVegetarian;
//   final bool isMealLactoseFree;
//
//   const Meal({
//     @required this.mealId,
//     @required this.mealTitle,
//     @required this.mealCategories,
//     @required this.mealImageUrl,
//     @required this.mealIngredients,
//     @required this.mealSteps,
//     @required this.mealDuration,
//     @required this.mealComplexity,
//     @required this.mealAffordability,
//     @required this.isMealGlutenFree,
//     @required this.isMealVegan,
//     @required this.isMealVegetarian,
//     @required this.isMealLactoseFree,
//   });
// }



enum Complexity {
  Simple,
  Challenging,
  Hard
  // Complex,
}

enum Affordability {
  Affordable,
  Luxurious,
  Pricey,
}
