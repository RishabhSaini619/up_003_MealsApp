import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/models/model_meal.dart';
import 'package:up_003_mealsapp/widgets/widget_meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMealList;

  static const routeName = 'favorites-screen';

  const FavoritesScreen(this.favoriteMealList, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoriteMealList.isEmpty) {
      return Center(
        child: Text(
          'You haven\'t add any Favorites meal yet. \n Start adding some!',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: favoriteMealList[index].id,
            title: favoriteMealList[index].title,
            imageUrl: favoriteMealList[index].imageUrl,
            duration: favoriteMealList[index].duration,
            complexity: favoriteMealList[index].complexity,
            affordability: favoriteMealList[index].affordability,
          );
        },
        itemCount: favoriteMealList.length,
      );
    }
  }
}
