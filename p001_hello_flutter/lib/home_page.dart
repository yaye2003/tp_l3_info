import 'package:flutter/material.dart';
import 'package:p001_hello_flutter/home_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 void  buildItem(AboutDialog{
  double height=200,
  double?width,
  Widget?child,
  BoxShape?shape}){
    return Containaire(
      height:120,
      width:200??MediaQuery.of(context).size.width -40,
      margin:EdgeInsets.all(10),
      decoration:BoxDecoration(
        color:Colors.blue,
        shape:shape??BoxShape.rectangle,
        gradient: LinearGradient(colors: [color,color.withOpacity(0,50)]),
      ),
      child:child??Text(""),
    );
    Widget columnOverSize(
      
    )
  }
 })
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:columnOverSize(),
    );
  }
}