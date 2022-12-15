import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/models/model_basic_data.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = 'meal-details-screen';

  const MealDetailsScreen({Key key}) : super(key: key);

  Widget buildSelectionTiles(BuildContext context, String title, Widget body) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 2),
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          body,
        ],
      ),
    );
  }

  Widget buildContainer(Widget buildContainerChild) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 1),
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      child: buildContainerChild,
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final mealId = routeArg['id'];
    final selectedMeal = basicMealData.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedMeal.title,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop(mealId);
            },
            icon: const Icon(
              Icons.delete,
            ),
            color: Colors.white,

          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 3),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 2),
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      child: Image.network(
                        selectedMeal.imageUrl,
                        alignment: Alignment.center,
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ), //Categories
                  buildSelectionTiles(
                    context,
                    'Categories',
                    buildContainer(
                      ListView.builder(
                        itemCount: selectedMeal.categories.length,
                        itemBuilder: (ctx, index) => ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.deepOrangeAccent,
                            child: Text(
                              '#${index + 1}',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          title: Text(
                            selectedMeal.categories[index],
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ),
                    ),
                  ),

                  //Ingredients
                  buildSelectionTiles(
                    context,
                    'Ingredients',
                    buildContainer(
                      ListView.builder(
                        itemCount: selectedMeal.ingredients.length,
                        itemBuilder: (ctx, index) => ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.deepOrangeAccent,
                            child: Text(
                              '#${index + 1}',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          title: Text(
                            selectedMeal.ingredients[index],
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Steps
                  buildSelectionTiles(
                    context,
                    'Steps',
                    buildContainer(
                      ListView.builder(
                        itemCount: selectedMeal.steps.length,
                        itemBuilder: (ctx, index) => ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.deepOrangeAccent,
                            child: Text(
                              '#${index + 1}',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          title: Text(
                            selectedMeal.steps[index],
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // buildSelectionTiles(
            //   context,
            //   'Steps',
            //   buildContainer(
            //     ListView.builder(
            //       itemCount: selectedMeal.steps.length,
            //       itemBuilder: (ctx, index) => ListTile(
            //         leading: CircleAvatar(
            //           backgroundColor: Colors.deepOrangeAccent,
            //           child: Text(
            //             '#${index + 1}',
            //             style: Theme.of(context).textTheme.bodyMedium,
            //           ),
            //         ),
            //         title: Text(
            //           selectedMeal.steps[index],
            //           style: Theme.of(context).textTheme.bodyMedium,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // buildSelectionTiles(
            //   context,
            //   'Steps',
            //   buildContainer(
            //     ListView.builder(
            //       itemCount: selectedMeal.steps.length,
            //       itemBuilder: (ctx, index) => ListTile(
            //         leading: CircleAvatar(
            //           backgroundColor: Colors.deepOrangeAccent,
            //           child: Text(
            //             '#${index + 1}',
            //             style: Theme.of(context).textTheme.bodyMedium,
            //           ),
            //         ),
            //         title: Text(
            //           selectedMeal.steps[index],
            //           style: Theme.of(context).textTheme.bodyMedium,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
