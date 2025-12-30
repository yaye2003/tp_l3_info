import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo stack",
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      useMaterial3: true),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Container buildBox(String texte,double height, double width,Color color){
    return Container(
      color: color,
      padding: const EdgeInsets.all(5),
      height: height,
      width: width,
      child: Text(texte,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
    );
  }

 Row buildRowButton(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: (){},
        child: const Icon(Icons.settings,color: Colors.white,),
      ),
      const SizedBox(height: 5,),
      FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed:(){},
        child: const Icon(Icons.phone,color: Colors.white,),),
        const SizedBox(height: 5,),
      FloatingActionButton(
        backgroundColor: Colors.grey.shade200,
        onPressed:(){},
        child: const Icon(Icons.camera,color: Colors.black,),),

    ],
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("Widget Stack"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 30,
            child: buildBox("Box 1", 250, 250, Colors.greenAccent),
          ),
           Positioned(
            top: 70,
            left: 60,
            child: buildBox("Box 2", 250, 250, Colors.redAccent),
          ),
           Positioned(
            top: 130,
            left: 90,
            child: buildBox("Box 3", 250, 250, Colors.orangeAccent),
          ),
           Positioned(
            top: 170,
            left: 120,
            child: buildBox("Box 4", 250, 250, Colors.blueAccent),
          ),
          Positioned(
            bottom: 170,
            right: 120,
            child: buildRowButton(),
          ),
        ],
      ),
    );
  }
}