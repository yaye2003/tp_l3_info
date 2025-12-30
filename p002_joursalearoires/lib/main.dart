import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Jour aleatoire",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:const Color.fromARGB(255, 255, 255, 255)
      ),
      home:JoursAleatoires(),
    );
  }
}
class JoursAleatoires extends StatefulWidget {
  const JoursAleatoires({super.key});

  @override
  State<JoursAleatoires> createState() => _JoursAleatoiresState();
}

class _JoursAleatoiresState extends State<JoursAleatoires> {
  List<String> joursdelaSemaine=[
  "Lundi",
  "Mardi",
  "Mercredi",
  "Jeudi",
  "Vendredi",
  "Samedi",
  "Dimanche"
  ];
  int indexJourActuel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Application jours aleatoires"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Cliquer pour voir un nouveau jour",style:TextStyle(fontSize: 20),),
             Text(joursdelaSemaine[indexJourActuel],style: TextStyle(fontSize: 40,color: Colors.green[800],
             fontWeight: FontWeight.bold),),
            ElevatedButton(onPressed: () {
              setState(() {
              indexJourActuel=Random().nextInt(7);
              });
            }, child: Text("Generer un jour"))
          ],
        )
      )
    );
  }
}