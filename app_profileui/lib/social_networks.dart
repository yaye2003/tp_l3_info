import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMadiaWidget extends StatelessWidget {
  const SocialMadiaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildIconButton(FontAwesomeIcons.facebook,Colors.blue.shade900),
          buildIconButton(FontAwesomeIcons.twitter,Colors.blue),
          buildIconButton(FontAwesomeIcons.whatsapp,Colors.green),
          buildIconButton(FontAwesomeIcons.youtube,Colors.red),
        ],
      ),
    );
  }
Widget buildIconButton(icon,color)=>IconButton(onPressed: (){}, icon: Icon(icon,size: 50,color: color,));


}