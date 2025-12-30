import 'package:flutter/material.dart';
class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key,
  this.backgroundImagePath="",
    this.profileImagePath="",
    this.height=400,});
  final String backgroundImagePath;
  final String profileImagePath;
  final double height;
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 40,
          left: 10,
          child: IconButton(onPressed: (){},
           icon: const  Icon(Icons.arrow_back,color: Colors.white,))),

           Positioned(
            top: 40,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(Icons.notifications_active,
                color: Colors.red.shade200,),
                Icon(Icons.favorite,
                color: Colors.green.shade100,)
              ],

            ),
           ),
           Positioned(
            top: (height/3),
            child: const Column(
              children: [
                Text("Alioune Badara Daigne",
                style: TextStyle(color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w800),),
                Text("(dit :Golbert Diagne)",
                style: TextStyle(color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300),)
              ],
            ),
           ),
           Positioned(
            top: height-70,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              child: CircleAvatar(
                radius: 63,
                backgroundImage: AssetImage(profileImagePath),
              ),
            )),

        Container(
          height: height,
          decoration: BoxDecoration(
            color: Colors.black,
            image:DecorationImage(
              colorFilter: ColorFilter.mode(
                // colorFilter c'est pour creer un effet d'assombrissemnet de l'image
                Colors.black.withOpacity(0.9), BlendMode.dstATop),
              image: AssetImage(backgroundImagePath),
              fit: BoxFit.cover,
              
            ),
            
            
          ),
          
          
        )
      ],
    );
  }
}