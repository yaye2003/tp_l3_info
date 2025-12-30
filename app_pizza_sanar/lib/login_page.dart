import 'package:flutter/material.dart';
import 'package:app_pizza_sanar/my_transparent_text_field.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
   
  buildBackgroundImage()=>Container(
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
      image: AssetImage("assets/pizza"))
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          buildBackgroundImage(),
          //Le rôle du SingleChildScrollView est de permettre à ce que le contenu puisse défiler quand il est plus long que la taille de l’écran notamment quand le clavier apparait. 
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 80),
                child: Text("Pizza-Sanar",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w300,color: Colors.white
                ),),),
              const MyTransparentTextField(
          labeltext: "Email",
          hintText: "Donnez un Email valide",
          prefixIcone: Icons.mail,
        ),
        const SizedBox(
          height: 10,
        ),
        const MyTransparentTextField(
          labeltext: "Mot de passe",
          hintText: "Donnez le mot de passe",
          isPassword: true,
          prefixIcone: Icons.lock_rounded,
        ),
         const SizedBox(
          height: 5,
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.bottomRight,
          child: TextButton(onPressed: (){}, child: const Text("Mot de passe oublie ?",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),)),),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(15)),
            child: const Text("Connexion",style: TextStyle(color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w800),),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)),
              child: TextButton(onPressed: (){}, child: const Text("Creer un compte",
              style: TextStyle(color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.w600),)),
          )
                
              ]
              
            ),
          )
        ],
      ),
    );
  }
}