import 'package:flutter/material.dart';
import 'inputBmi.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Checker',
      theme: ThemeData(
        hoverColor: const Color.fromARGB(255, 54, 67, 129),
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
          titleTextStyle: TextStyle(
              color: Colors.white,
              letterSpacing: 20,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Bmi(),
        '/result': (context) => const Result(),
      },
    );
  }
}
