import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WaveSolde extends StatefulWidget {
  final int solde;
  const WaveSolde({super.key,
   required this.solde});

  @override
  State<WaveSolde> createState() => _WaveSoldeState();
}

class _WaveSoldeState extends State<WaveSolde> {
  TextEditingController controllerSold=TextEditingController();
  var cacherSold=false;
  @override
  Widget build(BuildContext context) {
    var format = NumberFormat("###,###,###","fr_FR");
    controllerSold.text=format.format(widget.solde);
    return Container(
      alignment: Alignment.center,
      height: 60,
      margin:  const EdgeInsets.symmetric(horizontal: 70),
      child: TextField(
        textAlign: TextAlign.center,
        readOnly: true,
        style: const TextStyle(
          color: Colors.white,fontWeight: FontWeight.w600,fontSize: 35
        ),
        controller: controllerSold,
        obscureText: cacherSold,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 40),
          suffixIcon: IconButton(onPressed: (){ setState(() {
            cacherSold =! cacherSold;
          });}, icon: Icon(cacherSold? Icons.visibility: Icons.visibility_off,
          color: Colors.white,size: 30,)
          ),
          suffix: const Text("F",style: TextStyle(color: Colors.white,fontSize: 20),)),
      ),
    );
  }
}