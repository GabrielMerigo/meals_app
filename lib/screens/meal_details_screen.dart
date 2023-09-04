import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da Refeição'),
      ),
      body: const Center(
        child: Text('Detalhes da Refeição'),
      ),
    );
  }
}
