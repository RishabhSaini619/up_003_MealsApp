import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/screen/screen_categories.dart';
import 'package:up_003_mealsapp/screen/screen_favorites.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> selectedScreen = [
    {'screen': const CategoriesScreen(), 'title': 'Categories'},
    {'screen': FavoritesScreen(), 'title': 'Favorites'},
  ];
  int selectedScreenIndex = 0;
  void selectedBottomNavigationBarItem(int index) {
    setState(() {
      selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          selectedScreen[selectedScreenIndex]['title'],
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: selectedScreen[selectedScreenIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedBottomNavigationBarItem,
        selectedIconTheme:
            Theme.of(context).iconTheme.copyWith(color: Colors.white),
        unselectedIconTheme:
            Theme.of(context).iconTheme.copyWith(color: Colors.black),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
        unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
        currentIndex: selectedScreenIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(Icons.category_outlined),
            activeIcon: const Icon(Icons.category_rounded),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(Icons.star_border_rounded),
            activeIcon: const Icon(Icons.star_sharp),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
