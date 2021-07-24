import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/filters_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Meals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: GoogleFonts.raleway().fontFamily,
        textTheme: GoogleFonts.ralewayTextTheme().copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          headline6: GoogleFonts.robotoCondensed(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      // For not registered route
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // if (settings.name == '/meal-detail') {
        //   return ...;
        // } else if (settings.name == '/something-else') {
        //   return ...;
        // }
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
      // When flutter failed to reach any other resource route
      // It can be use as 404 page.
      onUnknownRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
    );
  }
}
