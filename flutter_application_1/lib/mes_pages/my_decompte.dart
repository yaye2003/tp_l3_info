
import 'package:flutter/material.dart';
import 'dart:async';

class MyDecompte extends StatefulWidget {
  const MyDecompte({super.key});

  @override
  State<MyDecompte> createState() => _MyDecompteState();
}

class _MyDecompteState extends State<MyDecompte> {
 int compteur=20;
 bool demarrerDecompte=false;
 late Timer localTimer;
 void startDecompte(){
  if(demarrerDecompte==true){
    localTimer=Timer.periodic(Duration(seconds:1),(timer){setState(() {
      if(compteur>0){
        compteur--;
      } else{
        timer.cancel();
        compteur=20;
        demarrerDecompte=false;
      }
    });});
  }
 }
 void stopDecompte(){
  if(demarrerDecompte==false){
    setState(() {
      localTimer.cancel();
      compteur=20;
    });
  }
 }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(!demarrerDecompte?"Cliquer pour demarrer" :"Decomptes en cours" ,style:TextStyle(color: Colors.white,fontSize: 24),),
            SizedBox(
              height: 150,width: 150,
              child: CircularProgressIndicator(
                value:compteur / 20.0,
                backgroundColor: Colors.orange[600],
                strokeWidth: 2.0,
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),),
              Text( "$compteur""20",style: TextStyle(color:Colors.green[50],fontSize: 150),),
              ElevatedButton(
                 onPressed: () { 
      setState(() { 
        demarrerDecompte = !(demarrerDecompte); 
        if (demarrerDecompte == true) { 
          startDecompte(); 
        } else { 
          stopDecompte(); 
        } 
      }); }, 

                
                
                 style: ElevatedButton.styleFrom(
                 backgroundColor:
                 demarrerDecompte ? Colors.red : Colors.green,
                 foregroundColor: Colors.white,
                 shape: CircleBorder(),fixedSize: Size(110, 110),),
                 child: Text(!demarrerDecompte?"Demarrer":"Arrter",style: TextStyle(color:Colors.white,fontSize: 18,),),),],
        )
      )),
    );
  }
}