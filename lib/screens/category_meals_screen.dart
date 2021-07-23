import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryTitle;

  const CategoryMealsScreen({Key? key, required this.categoryTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Text('The recipes for the $categoryTitle category'),
    );
  }
}
