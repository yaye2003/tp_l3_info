import 'package:flutter/material.dart';
class MaPage extends StatefulWidget {
  const MaPage({super.key});

  @override
  State<MaPage> createState() => _MaPageState();
}

class _MaPageState extends State<MaPage> {
  bool seSouvenir = false;

 Column buildColumnFrom(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    TextField(
      decoration: InputDecoration(
        labelText: "Numero client",
        icon: Icon(Icons.contacts,color: Colors.deepOrange,)
      ),
    ),
    TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Mot de passe",
        icon: Icon(Icons.lock_open_outlined,
        color: Colors.deepOrange,),
        suffixIcon: Icon(Icons.remove_red_eye_outlined)
      ),
      ),
      //En résumé, tout widget interactif qui change d’état a besoin d’une variable dans le State pour refléter son état actuel.
         SwitchListTile(value: seSouvenir, onChanged: (value){
        setState((){
         seSouvenir=value;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
      title: Text("Se souvenir de moi"),),
      
      Container(
        width: double.infinity,
        height: 40,
        margin: EdgeInsets.only(top: 20),
        child: ElevatedButton(onPressed: (){}, child: Text("Connexion",)),
      ),
       Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.centerRight,
        child: Text("Mot de passe oublie ?",style: TextStyle(color: Colors.blueAccent),)
      )
    ],

       
  );
}

 
    
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("imagebcao.jpg"),
        fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
        backgroundColor: Colors.deepOrange,
          title: Text("Banque Mobile",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          leading: Icon(Icons.menu_sharp,color: Colors.white,),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              border: Border.all(color: Colors.white30),
              borderRadius: BorderRadius.circular(10)
            ),
            child: buildColumnFrom(),
          ),
        ),
      ),
    );
  }
}