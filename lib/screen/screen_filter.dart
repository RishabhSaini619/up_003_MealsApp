import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/widgets/widget_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = 'filters-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Filters',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      endDrawer: const MainDrawer(),
      body: const Center(
        child: Text(
          'Filter',
        ),
      ),
    );
  }
}
