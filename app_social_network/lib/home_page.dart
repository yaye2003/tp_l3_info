import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';
import 'package:app_social_network/round_corner_panel.dart';
import 'package:app_social_network/user_cicle_avatar.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget buildHeading(){
    TextStyle menuStyle=const TextStyle(
      color:Colors.white,fontWeight: FontWeight.w300,fontSize: 22);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
      height: 200,
      width: double.infinity,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu,color: Colors.white,size: 30,),
              Icon(Icons.search,color: Colors.white,size: 30,),],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: (){}, child: Text("Messages",style: menuStyle,)),
              TextButton(onPressed: (){}, child: Text("En ligne",style: menuStyle,)),
              TextButton(onPressed: (){}, child: Text("Groupes",style: menuStyle,))
            ],
          )
        ],
      ),
    );
  }


    Row buildFavoritedLine(){
      return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Contacts favoris",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,fontSize: 20),),
          Icon(Icons.more_horiz,color: Colors.white,size: 22,)
        ],
      );
    }



  Widget buildHorizontalListContacts(BuildContext context){
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding:  const EdgeInsets.only(left: 20,right: 0,top: 5,bottom: 5),
        physics:  const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context,index){
          return Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserCicleAvatar(profilePhotoUrl: "https://source.unsplash.com/random/100x100avatar,face&${index + Random().nextInt(100)}",
              outterRadius: 36,
              innerRadius: 33,),
              Text("UserName $index",
              style:  const TextStyle(
                color: Colors.white,fontWeight: FontWeight.w500
              ),)
            ],
          ),);
        }),
    );
  }

  

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF333320 ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(clipBehavior: Clip.none,
        children: [
          buildHeading(),
          const Positioned(
            top: 160,
            left: 0,
            right: 0,
            height: 250,
            child: RoundCornerPanel(
              child: buildFavoriteContactsPanel(context),
            )
          )
        ],),
      ),
    );
  }
}