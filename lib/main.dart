import 'package:flutter/material.dart';
// import 'screens/signup_screen.dart';
// import 'screens/login_screen.dart';
// import 'screens/home_screen.dart';
// import 'screens/persistence_screen.dart';
// import 'screens/api_screen.dart';
// import 'screens/settings_menu_screen.dart';
import 'screens/notification_screen.dart';

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

      // home: const SignupScreen(),
      // home: const LoginScreen(),
      // home: const HomeScreen(),
      // home: const PersistenceScreen(),
      // home: const ApiScreen(),
      // home: const SettingsMenuScreen(),
      home: const NotificationScreen(),
    );
  }
}