import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/login/Login.dart';
import 'package:untitled4/login/Register.dart';
import 'package:untitled4/quran/quran.dart';
import 'package:untitled4/splash/splash.dart';
import 'package:untitled4/task2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splashIconSize: 150,
        splash: Container(
          child: Image.asset('images/Group 12.png'),
        ),
        nextScreen: note(),
      ),
    );
  }
}
