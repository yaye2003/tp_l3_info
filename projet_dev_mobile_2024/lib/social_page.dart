import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projet_dev_mobile_2024/animation.dart';
import 'package:projet_dev_mobile_2024/login_page.dart';
import 'package:projet_dev_mobile_2024/main.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,
        color: Colors.black,
        size: 30,)),
      ) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeAnimation(delay:1000, child: Container(
              height: 280,
              child: Image.asset('images/smart agriculture (7).png'),
            )),
             FadeAnimation(delay:2000, child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30,
              ),
              child: Column(
                children: [
                  Text("Le changement commence ici »",
                  style: GoogleFonts.poppins(color: dRed,fontSize: 16,
                  fontWeight: FontWeight.w600),),
                  SizedBox(height: 10,),
                  Text(
                    "Enregistrez vos progrès pour accéder à votre programme d’entraînement personnalisé!",
                    style:GoogleFonts.poppins(color:Colors.grey,
                    fontSize: 15)
                  )
                ],
              ),
            )),

             FadeAnimation(
                  delay: 3500,
                  child: Container(
                    margin:EdgeInsets.symmetric(vertical: 14,horizontal: 40),
                    child: Column(
                      children: [
                        ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage(),));
                        }, 
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: dRed,
                          padding: EdgeInsets.all(13)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Icon(Icons.mail_outline_outlined),
                          SizedBox(width: 10,),
                          Text("Email",style: TextStyle(color: Colors.white),)
                        ],)),
                        SizedBox(height: 20),
                        ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage(),));
                        }, 
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: dRed,
                          padding: EdgeInsets.all(13)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Icon(Icons.mail_outline_outlined),
                          SizedBox(width: 10,),
                          Text("GOOGLE",style: TextStyle(color: Colors.white),)
                        ],)),
                         SizedBox(height: 20),
                       ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage(),));
                       }, 
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: dRed,
                          padding: EdgeInsets.all(13)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                         FaIcon(FontAwesomeIcons.facebook),
                          SizedBox(width: 10,),
                          Text("FACEBOOK",style: TextStyle(color: Colors.white),)
                        ],)),
                      ],
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}