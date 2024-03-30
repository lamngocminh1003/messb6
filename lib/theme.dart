import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

final varelaTheme = TextTheme(
  displayLarge: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 40,
    fontWeight: FontWeight.bold,
  ),
  displayMedium: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 25,
    fontWeight: FontWeight.bold,
  ),
  displaySmall: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
  headlineMedium: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 40,
    fontWeight: FontWeight.bold,
  ),
  headlineSmall: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 25,
    fontWeight: FontWeight.bold,
  ),
  titleLarge: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 30,
    fontWeight: FontWeight.bold,
  ),
  titleMedium: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  titleSmall: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 12,
    fontWeight: FontWeight.bold,
  ),
  bodyLarge: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  bodyMedium: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
  bodySmall: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 12,
    fontWeight: FontWeight.bold,
  ),
);

// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorLightTheme),
    textTheme: varelaTheme,
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorDarkTheme),
    textTheme: varelaTheme,
    colorScheme: ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
