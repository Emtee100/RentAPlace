import 'package:flutter/material.dart';
import 'package:rent_a_place/themes/theming.dart';
import 'screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'RentAPlace',
        themeMode: ThemeMode.system,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        debugShowCheckedModeBanner: false,
        home: const MyHomePage());
  }
}
