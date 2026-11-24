import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/recipe_detail_screen.dart';

void main() {
  runApp(const TasteTroveApp());
}

class TasteTroveApp extends StatelessWidget {
  const TasteTroveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TasteTrove',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFC59B43),
          primary: const Color(0xFFC59B43),
        ),
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const TasteTroveHomeScreen(),
        '/details': (context) => const RecipeDetailScreen(),
      },
    );
  }
}