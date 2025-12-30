import 'package:flutter/material.dart';
class BoutonColore extends StatelessWidget {
  final Color? couleur;
  final String texteBouton;
  final Function()? onPressed;
  const BoutonColore({super.key,
  this.couleur,
  required this.texteBouton,
  this.onPressed=null});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
     style: ElevatedButton.styleFrom(
      backgroundColor: couleur ?? Colors.blue,
      foregroundColor: Colors.white,
      minimumSize: const Size(150, 50)
     ),
    
     child: Text(texteBouton,style: const TextStyle(fontSize: 20),));
  }
}
