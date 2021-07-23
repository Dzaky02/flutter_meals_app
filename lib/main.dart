import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';

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
        primaryTextTheme: GoogleFonts.ralewayTextTheme().copyWith(
          headline6: GoogleFonts.raleway(color: Colors.white),
        ),
        accentTextTheme: GoogleFonts.ralewayTextTheme(),
        textTheme: GoogleFonts.ralewayTextTheme().copyWith(
          bodyText1: GoogleFonts.raleway(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyText2: GoogleFonts.raleway(
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
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
      },
    );
  }
}
