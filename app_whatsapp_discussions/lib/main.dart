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

  Widget buildListDiscussions(int nombre){
    return ListView.builder(itemCount: nombre,itemBuilder: (context,index){
      return ListTile(
        leading: getAvatar(index),
        title: Text("User $index"),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.check),
            Text("Dernier message $index")
          ],
        ),
        trailing: buildTrailing(index),
      );
    });
  }

  CircleAvatar getAvatar(int index){
    return CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage("https://source.unsplash.com/random?sig=$index&person%20face"),
    );
  }
  Widget buildTrailing(int index){
    var msgTime="${DateTime.now().hour}:${(DateTime.now().minute - index)%60}";
    return SizedBox(
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(msgTime,style: const TextStyle(
            color: Colors.grey,
            fontSize: 10)),
            Flexible(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(Icons.volume_off,size: 18,),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                  child: Text("${index +10}",
                  style: const TextStyle(
                    color: Colors.white,fontSize: 10),),
                )
              ],
            ))
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("whatsApp Discussions",
        style: TextStyle(
          color: Colors.white,fontWeight: FontWeight.bold,)
         ),
        centerTitle: true,
        backgroundColor: Colors.green,
        ),
        body: buildListDiscussions(100),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: (){},
          child: Icon(Icons.comment,
          color: Colors.white,),
        ),
    );
  }
}