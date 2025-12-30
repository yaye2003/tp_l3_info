import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea( child :Container(
        //height: 200,
        height: double.infinity,
        //width: 300,
        width: double.infinity,
        color: Colors.deepPurple,
        margin: EdgeInsets.all(20), 
        child: Container(
          height: 200,
          width: 400,
          color: Colors.blue,
        ),
        /*decoration: BoxDecoration(
          color: Colors.blue,
        ),
        /*lorsqu'on utilise decoration on doit pas definir la couleur en dehors et a l'interieur*/
     //EdgeInsets.all(value) Applique la même valeur de marge ou de padding sur les quatre côtés.
     // margin:EdgeInsets.only(top:60,left: 40), //EdgeInsets.only(left: , top: , right: , bottom: ) Permet de définir des valeurs différentes pour chaque côté.
      //margin:EdgeInsets.symmetric() //Définit la même valeur pour les côtés opposés.horizontal agit sur left et rightvertical agit sur top et bottom  
      //margin:EdgeInsets.symmetric(vertical: 100),
      //margin:EdgeInsets.symmetric(vertical: 100,horizontal: 100)

      ),
    ));
  }
}




/*EdgeInsets.all(value)
Applique la même valeur de marge ou de padding sur les quatre côtés.
EdgeInsets.only(left: , top: , right: , bottom: )
Permet de définir des valeurs différentes pour chaque côté.
EdgeInsets.symmetric(vertical: , horizontal: )
Définit la même valeur pour les côtés opposés.
horizontal agit sur left et right
vertical agit sur top et bottom  */
