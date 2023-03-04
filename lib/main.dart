import 'package:flutter/material.dart';
import 'package:untitled4/Login.dart';
import 'package:untitled4/Register.dart';
import 'package:untitled4/card.dart';
import 'package:untitled4/quran.dart';
import 'package:untitled4/task2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
