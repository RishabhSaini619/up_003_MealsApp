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

  String get affordabilityValue {
    switch (affordability) {
      case Affordability.Affordable:
        return ' Affordable';
        break;
      case Affordability.Pricey:
        return ' Pricey';
        break;
      case Affordability.Luxurious:
        return ' Luxurious';
        break;
      default:
        return 'Unknown';
    }
    // if (affordability == Affordability.Affordable) {
    //   return 'Affordable';
    // }
    // if (affordability == Affordability.Pricey) {
    //   return 'Pricey';
    // }
    // if (affordability == Affordability.Luxurious) {
    //   return 'Luxurious';
    // }
  }

  String get complexityValue {
    switch (complexity) {
      case Complexity.Simple:
        return ' Simple';
        break;
      case Complexity.Challenging:
        return ' Challenging';
        break;
      case Complexity.Hard:
        return ' Hard';
        break;
      default:
        return 'Unknown';
    }
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
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                        color: Colors.white60,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        )),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.titleSmall,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.timer_sharp,
                      ),
                      SizedBox(
                        width: 5,
                        height: 5,
                      ),
                      Text('$duration Min'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.work_history_outlined,
                      ),
                      SizedBox(
                        width: 5,
                        height: 5,
                      ),
                      Text('$complexityValue'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('₹',
                      style: TextStyle(
                        fontSize: 30,
                      ),),
                      SizedBox(
                        width: 5,
                        height: 5,
                      ),
                      Text('$affordabilityValue'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
