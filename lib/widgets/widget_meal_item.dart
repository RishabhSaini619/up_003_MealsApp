import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/models/model_meal.dart';
import 'package:up_003_mealsapp/screen/screen_category_meals.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

   MealItem({
     @required this.title,
     @required this.imageUrl,
     @required this.duration,
     @required this.complexity,
     @required this.affordability,
  });

  void selectMeal(BuildContext naviCtx) {
    Navigator.of(naviCtx).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'title': title,
      },
    );

    // Navigator.of(naviCtx).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoryMealsScreen(id, title);
    //     },
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children:  [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  child: Image.network(imageUrl,
                  height: 250,width: double.infinity,
                  fit: BoxFit.cover,
                  ),

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
