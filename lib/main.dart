import 'package:flutter/material.dart';
import 'package:meals_app/screens/meal_details_screen.dart';
import 'package:meals_app/screens/settings_screen.dart';

import 'screens/tabs_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      title: 'DeliMeals',
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        primarySwatch: Colors.pink,
        highlightColor: Colors.orangeAccent,
        fontFamily: 'Raleway',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 25),
          bodyMedium: TextStyle(fontSize: 14, fontFamily: 'RobotoCondensed'),
        ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => const TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAILS: (ctx) => MealDetailsScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingScreen()
      },
    );
  }
}
