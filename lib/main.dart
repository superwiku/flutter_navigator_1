import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:navigator_object/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        backgroundColor: Colors.black,
        splash: Icon(Icons.person, size: 80, color: Colors.yellow,), 
        nextScreen: HomePage(),
        splashTransition: SplashTransition.rotationTransition,
        duration: 1000,
        ),
    );
  }
}