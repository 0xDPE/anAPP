import 'package:flutter/material.dart';
import 'package:notes_app/pages/details_page.dart';
import 'package:notes_app/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
      routes: {
        '/home': (context) => const HomePage(),
        '/details': (context) => const DetailsPage(),
      },

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow,
          primary: const Color.fromARGB(248, 255, 239, 97),
          secondary: const Color.fromARGB(255, 255, 245, 157)
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 62,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          displaySmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
