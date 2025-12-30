import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo actioons",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.green),
      useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo actions"),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){
            var snackBar=const SnackBar(content: Text("Prendre une photo"),
            duration: Duration(seconds: 3),);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }, icon:  const Icon(Icons.photo_camera)), //IconButton pour avoir l'interaction
           IconButton(onPressed: (){
            var snackBar=const SnackBar(content: Text("Faire une Recherche"),
            duration: Duration(seconds: 3),);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
           }, icon:  const Icon(Icons.search)),

          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            offset: const Offset(0, 45),
            itemBuilder: (context)=><PopupMenuEntry>[
              PopupMenuItem(
                value: 0,
                onTap: (){
                  var snacker= const SnackBar(content: Text("Clique sur le Menu 1"),);
                  ScaffoldMessenger.of(context).showSnackBar(snacker);
                },
                child: const Text("Menu 1")
                ),
                const PopupMenuDivider(),
                PopupMenuItem(
                  value: 1,
                onTap: (){
                  var snacker= const SnackBar(content: Text("Clique sur le Menu 1"),);
                  ScaffoldMessenger.of(context).showSnackBar(snacker);
                },
                child: const Text("Parametres"),
                )
          ]) 
        ],
      ),
    );
  }
}