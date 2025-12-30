import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 //Column: Permet de placer les composants dans une apparence "verticale" Row: Il s'agit de placer les composants dans une apparence "horizontale" 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      //theme: ThemeData(primarySwatch: Colors.deepOrange),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildBox(String texte, Color color) {
    return Container(
      height: 100,
      width: 200,
      color: color,
      child: Center(
       child: Text(texte,style: TextStyle(fontSize: 25),),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Column" ,style: TextStyle(color: Colors.white,),),
        centerTitle: true),
      body: Column(
        // La propriété children de Column est utilisée pour définir une liste de widgets enfants de Column. 
        // mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         
        children: [
          buildBox("Box 1", Colors.green),
          buildBox("Box 1", Colors.orangeAccent),
          buildBox("Box 1", Colors.redAccent),
          buildBox("Box 1", Colors.blueAccent),
        ],
      ),
    );
  }
}