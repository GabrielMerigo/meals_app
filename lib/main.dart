import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      title: 'DeliMeals',
      theme: ThemeData(
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        primarySwatch: Colors.pink,
        fontFamily: 'Raleway',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 25),
          bodyMedium: TextStyle(fontSize: 14, fontFamily: 'RobotoCondensed'),
        ),
      ),
      home: CategoriesScreen(),
    );
  }
}
