import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/screen/screen_categories.dart';
import 'package:up_003_mealsapp/screen/screen_favorites.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'MEAL\'S App',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: const Icon(
                  Icons.category_outlined,
                ),
                child: Text(
                  'Categories',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Tab(
                icon: const Icon(
                  Icons.star_border_rounded,
                ),
                child: Text(
                  'Favorites',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavoritesScreen(),

          ],
        ),
      ),
    );
  }
}
