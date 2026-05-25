import 'package:flutter/material.dart';
import 'screens/signup_screen.dart';

void main() {
  runApp(const SereneApp());
}

class SereneApp extends StatelessWidget {
  const SereneApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Serene Habit Tracker',

      theme: ThemeData(
        primarySwatch: Colors.green,
      ),

      home: const SignupScreen(),
    );
  }
}