import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home page"),
        elevation: 18.0,
      ),
      body: ListView(
        //TextField est un widget de base qui permet a l'utilisateur de saisir du texte .Une zone de texte que vous pourrez trouver sur un formulaire en ligne
        padding:  const EdgeInsets.all(20),
        children: const [
          TextField(
            decoration: InputDecoration(
              hintText: "Entrez votre e-email",
              labelText: "E-mail",
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
              helperText: "Votre e-mail doit contenir @"
            ),
          )
        ],
      ),
    );
  }
}