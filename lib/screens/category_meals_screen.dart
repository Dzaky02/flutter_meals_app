import 'package:flutter/material.dart';

import '../components/meal_item.dart';
import '../models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';

  final List<Meal> availableMeals;

  const CategoryMealsScreen(this.availableMeals);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String? categoryTitle;
  List<Meal> displayedMeals = [];

  @override
  void didChangeDependencies() {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    categoryTitle = routeArgs['title'];
    displayedMeals = widget.availableMeals
        .where((element) => element.categories.contains(categoryId))
        .toList();
    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((element) => element.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemCount: displayedMeals.length,
        itemBuilder: (context, index) => MealItem(
          id: displayedMeals[index].id,
          name: displayedMeals[index].name,
          imageUrl: displayedMeals[index].imageUrl,
          duration: displayedMeals[index].duration,
          complexity: displayedMeals[index].complexity,
          affordability: displayedMeals[index].affordability,
          removeItem: _removeMeal,
        ),
      ),
    );
  }
}
