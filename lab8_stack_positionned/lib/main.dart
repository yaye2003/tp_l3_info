import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 //Le widget Stack superpose les children les uns sur les autres sous forme de couches superposées comme une pile de livres.  
 //Le Widget Stack place toujours les premiers Widgets en dessous et les derniers au-dessus sur l’axe Z.
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

Column buildColumnButton(){
  return Column(
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
        // Avec le Widget Stack les buildBox se superpose selon leurs tailles. Les enfants Positioned ignorent le alignment. Les enfants non positionnés prennent la valeur de alignment pour savoir où se placer.Par défaut, alignment = Alignment.topLeft.
        alignment: Alignment.center,
        //alignment:Alignment.topLeft,
        //alignment: Alignment.topCenter,
       // alignment: Alignment.topRight,
        children: [
         /* buildBox("Box 1", 300, 300, Colors.greenAccent),
          buildBox("Box 2", 250, 250, Colors.redAccent),
          buildBox("Box 3", 200, 200, Colors.orangeAccent),
          buildBox("Box 4", 150, 150, Colors.blueAccent), */
        Align(alignment: Alignment.topLeft,
        child:buildBox("Box 1", 300, 300, Colors.greenAccent) ,),
        Align(alignment: Alignment.bottomRight,
        child:buildBox("Box 2", 250, 250, Colors.redAccent) ,),
        Align(alignment: Alignment.topRight,
        child:buildBox("Box 3", 200, 200, Colors.orangeAccent) ,),
         Align(alignment: Alignment.bottomLeft,
        child:buildBox("Box 4", 150, 150, Colors.blueAccent) ,), 
        Align(
          alignment: Alignment.centerRight,
        child: Padding(padding: const EdgeInsets.only(right: 5),
        child: buildColumnButton(),),)
          ],
      ),
    );
  }
}