import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projet_dev_mobile_2024/animation.dart';
//import 'package:projet_dev_mobile_2024/login_page.dart';
//import 'package:projet_dev_mobile_2024/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.close),
        color: Colors.black,)),
        body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               FadeAnimation(
                  delay: 1500,
                  child: Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 30),
                    child: Text(
                      "Prédisez les rendements agricoles grâce à l’analyse des données",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 16,
                      ))))
            ],
          ),
        ) ,
      );
    
  }
}