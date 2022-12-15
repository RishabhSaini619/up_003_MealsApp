import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/widgets/widget_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = 'filters-screen';

  final Function saveFilter;
  final Map<String, bool> currentFilters;

  const FiltersScreen(this.currentFilters, this.saveFilter, {Key key})
      : super(key: key);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool isGlutenFree = false;
  bool isVegan = false;
  bool isVegetarian = false;
  bool isLactoseFree = false;
  @override
  void initState() {
    isVegan = widget.currentFilters['veganFilter'];
    isVegetarian = widget.currentFilters['vegetarianFilter'];
    isGlutenFree = widget.currentFilters['glutenFreeFilter'];
    isLactoseFree = widget.currentFilters['lactoseFreeFilter'];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget switchListTileItem(
      String switchListTileItemTitle,
      String switchListTileItemSubtitle,
      bool switchListTileItemBool,
      Function switchListTileItemFunction,
      // Image activeThumbImage,
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
          switchListTileItemTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        subtitle: Text(
          'This meal is only include $switchListTileItemSubtitle ingredients',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        value: switchListTileItemBool,
        onChanged: switchListTileItemFunction,
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
                switchListTileItem(
                  'Vegan',
                  'Vegan',
                  isVegan,
                  (newValue) {
                    setState(() {
                      isVegan = newValue;
                    });
                  },
                  // Image.asset('assets/images/vegetarian.png'),
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ),
                //isVegetarian
                switchListTileItem(
                  'Vegetarian',
                  'Vegetarian',
                  isVegetarian,
                  (newValue) {
                    setState(() {
                      isVegetarian = newValue;
                    });
                  },
                  // Image.asset('assets/images/vegetarian.png'),

                  Colors.green, Colors.red,
                ),
                //isGlutenFree
                switchListTileItem(
                  'Gluten-Free',
                  'isGluten free',
                  isGlutenFree,
                  (newValue) {
                    setState(() {
                      isGlutenFree = newValue;
                    });
                  },
                  // Image.asset('assets/images/vegetarian.png'),
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ),
                //isLactoseFree
                switchListTileItem(
                  'Lactose-Free',
                  'Lactose free',
                  isLactoseFree,
                  (newValue) {
                    setState(() {
                      isLactoseFree = newValue;
                    });
                  },
                  // Image.asset('assets/images/lactose-free.png'),
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ),
                InkWell(
                  onTap: () {
                    final selectedFilters = {
                      'glutenFreeFilter': isGlutenFree,
                      'veganFilter': isVegan,
                      'vegetarianFilter': isVegetarian,
                      'lactoseFreeFilter': isLactoseFree,
                    };
                    widget.saveFilter(selectedFilters);
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.8),
                      border: Border.all(color: Colors.black, width: 1),
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Save',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const Icon(
                          Icons.save_as_sharp,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    final selectedFilters = {
                      'glutenFreeFilter': isGlutenFree,
                      'veganFilter': isVegan,
                      'vegetarianFilter': isVegetarian,
                      'lactoseFreeFilter': isLactoseFree,
                    };
                    widget.saveFilter(selectedFilters);
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.save_as_sharp,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
