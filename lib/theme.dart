import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey[200],
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
    primaryColor: Colors.white,
    cardColor: Colors.white,
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)));

final ThemeData dartTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
    primaryColor: const Color.fromARGB(255, 57, 57, 57),
    cardColor: Colors.black,
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)));
