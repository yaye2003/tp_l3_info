import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatApp Discussion",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  int currentFenetre=0;
  static Widget buildFenetre(String title,{Color bgcolor=Colors.grey}){
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: bgcolor
      ),
      child:  Center(
        child: Text(title,
        style: const TextStyle(fontSize: 40,color: Colors.white),),
      ),
    );
  }

   List<Widget> fenetres=[
    buildFenetre("Accueil",bgcolor:Colors.red),
    buildFenetre("Accueil",bgcolor:Colors.red),
    buildFenetre("Accueil",bgcolor:Colors.red),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green
              ),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://lequtidien.sn/wp-content/uploads/2021/08/YOUSSOU-NDOUR.jpg"),
                ),
                Text("Youssou Ndour",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                ),
                Text("Musicien Senegalaise",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                ),
                ),

              ],
            )),
            ListTile(
              title: Text("Accueil"),
              leading: Icon(Icons.home_work,size: 40,color:Colors.red),
              onTap: (){
                setState(() {
                  currentFenetre=0;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              title: const Text("Profil"),
              leading:const Icon(Icons.home_work,size: 40,color:Colors.blue),
               onTap: (){
                setState(() {
                  currentFenetre=1;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              title:const Text("PlayLists"),
              leading:const Icon(Icons.home_work,size: 40,color:Colors.green),
               onTap: (){
                setState(() {
                  currentFenetre=2;
                  Navigator.pop(context);
                });
              },
            ),
           const  Divider(),
            ListTile(
              title: const Text("Configurations"),
              leading:const Icon(Icons.home_work,size: 40,color:Colors.orange),
            ),
           const  Divider(),
            ListTile(
              title: const Text("Telechargements"),
              leading:const Icon(Icons.home_work,size: 40,color:Colors.purple),
            ),
          ],
        ),
      ),
      body: fenetres[currentFenetre],
    );
  }
}