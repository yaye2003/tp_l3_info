import 'package:flutter/material.dart';
import 'package:projet_dev_mobile_2024/welcome_page.dart'; 
const dRed = Color(0xFF5D4037); // marron foncé


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:WelcomePage(),
    );
  }
}