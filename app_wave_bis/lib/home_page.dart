import 'dart:math';
import 'package:app_wave_bis/wave_barre_outils.dart';
import 'package:app_wave_bis/wave_qr_card.dart';
import 'package:app_wave_bis/wave_solde.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildOperationsCompte (){
    var typeOperations=<String>[
      "Retrait",
      "Depot",
      "Transfert a M. xxx",
      "Transfert a A Mme YYY"
    ];
    return SizedBox(
      height:  MediaQuery.of(context).size.height/2,
      width:  MediaQuery.of(context).size.width -20,
      child: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          title: Text(typeOperations[Random().nextInt(4)],
          style: const TextStyle(
            color: Color(0xFF4F3Fc6),
            fontWeight: FontWeight.w500)),
            subtitle:  Text("${DateTime.now()}",
            style: TextStyle(
              color: Colors.grey.shade500,fontWeight: FontWeight.w600 ),),
              trailing: Text("${Random().nextInt(10000)} F",
              style: const TextStyle(
                color: Color(0xFF4F3Fc6),
                fontSize: 14,
                
              ),),
        );
      }),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4F3Fc6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4F3Fc6),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.settings,
        color: Colors.white,)),
      ),
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration:  const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white
              ),
            )),
           Column(
            children: [
              WaveSolde(solde: Random().nextInt(100000)),
              WaveQrCard(idCompte: Random().nextInt(100000)),
              WaveBarreOutils(),
              Expanded(child: buildOperationsCompte())
            ],
           )

        ],
      ),
      
    );
  }
}