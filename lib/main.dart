import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home/home_page.dart';
import 'package:flutter_train_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: lightTheme,
      darkTheme: dartTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
