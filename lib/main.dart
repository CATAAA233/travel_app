import 'package:flutter/material.dart';
import 'package:travel_app/config/theme/app_theme.dart';
import 'package:travel_app/presentation/screens/home_screen.dart';
import 'package:travel_app/presentation/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: AppTheme().getTheme(),
      routes: {
        '/':(context) => const WelcomeScreen(),
        '/home':(context)=> const HomeScreen()
      },
    );
  }
}
