import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
    seedColor:
        Colors.black); //k is the prefix used for global variables in flutter

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark, //for dark mode
  seedColor: Colors.grey,
); //for dark mode

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        //the dark theme part, .dark pre configures a lot of dark mode defaults.
        colorScheme: kDarkColorScheme,
        cardTheme: CardTheme().copyWith(
          //you wanna use copy with for all theming, to make sure it copies all the defaults so you don't have to set them up, then you modify whatever specific part you want.
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            //some widgets have copyWith, some have styleFrom
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: CardTheme().copyWith(
          //you wanna use copy with for all theming, to make sure it copies all the defaults so you don't have to set them up, then you modify whatever specific part you want.
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            //some widgets have copyWith, some have styleFrom
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 16,
              ),
            ),
      ),
      themeMode:
          ThemeMode.dark, //set a default, use .system to make it as default
      home: const Expenses(),
    ),
  );
}
