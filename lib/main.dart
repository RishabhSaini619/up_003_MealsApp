import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:up_003_mealsapp/screen/screen_filter.dart';
import 'package:up_003_mealsapp/screen/screen_meals.dart';
import './screen/screen_categories.dart';
import './screen/screen_category_meals.dart';
import 'package:up_003_mealsapp/screen/screen_meal_details.dart';
import './home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meals App',
      theme: ThemeData(
        accentColor: Colors.white,
        backgroundColor: Colors.white70,
        primaryColor: Colors.deepOrange,
        canvasColor: Colors.grey.shade50,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepOrange,
        ).copyWith(
          secondary: Colors.black,
        ),
        fontFamily: 'RobotoCondensed',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: 'Raleway',
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Raleway',
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Raleway',
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            fontSize: 40,
            fontFamily: 'Raleway',
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
            fontSize: 30,
            fontFamily: 'Raleway',
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
          titleSmall: TextStyle(
            fontSize: 25,
            fontFamily: 'Raleway',
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w300,
          ),
          bodyLarge: TextStyle(
            fontSize: 25,
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyMedium: TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodySmall: TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
        ),
      ),
      initialRoute: '/',
      home: const MyHomePage(),
      routes: {
        'home': (ctx) => const MyHomePage(),
        MealDetailsScreen.routeName: (ctx) => const MealDetailsScreen(),
        CategoriesScreen.routeName: (ctx) => const CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => const CategoryMealsScreen(),
        FiltersScreen.routeName: (ctx) =>  FiltersScreen(),

      },
    );
  }
}
