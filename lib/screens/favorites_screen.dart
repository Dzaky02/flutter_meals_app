import 'package:flutter/material.dart';
import 'package:flutter_meals_app/components/meal_item.dart';
import 'package:flutter_meals_app/models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return (favoriteMeals.isEmpty)
        ? const Center(
            child: const Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'You have no favorite yet\n-start adding some-',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          )
        : ListView.builder(
            itemCount: favoriteMeals.length,
            itemBuilder: (context, index) => MealItem(
              id: favoriteMeals[index].id,
              name: favoriteMeals[index].name,
              imageUrl: favoriteMeals[index].imageUrl,
              duration: favoriteMeals[index].duration,
              complexity: favoriteMeals[index].complexity,
              affordability: favoriteMeals[index].affordability,
              removeItem: () {},
            ),
          );
  }
}
