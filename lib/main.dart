import 'package:flutter/material.dart';
import './home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
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

          titleLarge: TextStyle(
            fontSize: 40,
            fontFamily: 'Raleway',
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
            fontSize: 30,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
          titleSmall: TextStyle(
            fontSize: 20,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w300,
          ),
          bodyLarge: TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyMedium: TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodySmall: TextStyle(
            fontSize: 10,
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
