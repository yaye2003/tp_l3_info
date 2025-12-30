import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Horloge()
    );
  }
}
class Horloge extends StatefulWidget {
  const Horloge({super.key});
 void buildStartButton() {}

  @override
  State<Horloge> createState() => _HorlogeState();
}

class _HorlogeState extends State<Horloge> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}