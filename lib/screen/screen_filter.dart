import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/widgets/widget_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = 'filters-screen';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool isGlutenFree = false;
  bool isVegan = false;
  bool isVegetarian = false;
  bool isLactoseFree = false;

  @override
  Widget build(BuildContext context) {
    Widget SwitchListTileItem(
      String SwitchListTileItemTitle,
      String SwitchListTileItemSubtitle,
      bool SwitchListTileItemBool,
      Function SwitchListTileItemFunction,
      Color activeColor,
      Color inActiveColor,
    ) {
      return SwitchListTile(
        isThreeLine: true,
        activeColor: activeColor, //activeThumbColor
        inactiveThumbColor: inActiveColor,
        activeTrackColor: Colors.grey,
        inactiveTrackColor: Colors.grey,
        title: Text(
          SwitchListTileItemTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        subtitle: Text(
          'This meal is only include $SwitchListTileItemSubtitle ingredients',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        value: SwitchListTileItemBool,
        onChanged: SwitchListTileItemFunction,
      );
    }

    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Filters',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      endDrawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 00),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 2),
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Text(
              'Adjust Your Meal Selection',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1),
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: ListView(
              children: [
                //Vegan
                SwitchListTileItem(
                  'Vegan',
                  'Vegan',
                  isVegan,
                  (newValue) {
                    setState(() {
                      isVegan = newValue;
                    });
                  },
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ),
                //isVegetarian
                SwitchListTileItem(
                  'Vegetarian',
                  'Vegetarian',
                  isVegetarian,
                  (newValue) {
                    setState(() {
                      isVegetarian = newValue;
                    });
                  },
                  Colors.red,
                  Colors.green,
                ),
                //isGlutenFree
                SwitchListTileItem(
                  'Gluten-Free',
                  'isGluten free',
                  isGlutenFree,
                  (newValue) {
                    setState(() {
                      isGlutenFree = newValue;
                    });
                  },
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ),
                //isLactoseFree
                SwitchListTileItem(
                  'Lactose-Free',
                  'Lactose free',
                  isLactoseFree,
                  (newValue) {
                    setState(() {
                      isLactoseFree = newValue;
                    });
                  },
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
