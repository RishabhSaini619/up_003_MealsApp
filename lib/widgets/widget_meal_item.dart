import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/screen/screen_category_meals.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;

  const MealItem(
    this.id,
    this.title,
  );

  // void selectCategory(BuildContext naviCtx) {
  //   Navigator.of(naviCtx).pushNamed(
  //     CategoryMealsScreen.routeName,
  //     arguments: {
  //       'id': id,
  //       'title': title,
  //     },
  //   );
  //
  //   // Navigator.of(naviCtx).push(
  //   //   MaterialPageRoute(
  //   //     builder: (_) {
  //   //       return CategoryMealsScreen(id, title);
  //   //     },
  //   //   ),
  //   // );
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          // borderRadius: BorderRadius.circular(20),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          color: Colors.blueAccent,
          // gradient: LinearGradient(
          //   colors: [
          //     color.withOpacity(0.6),
          //     color,
          //     color,
          //     color,
          //     color.withOpacity(0.6),
          //   ],
          //   tileMode: TileMode.mirror,
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomLeft,
          // ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
