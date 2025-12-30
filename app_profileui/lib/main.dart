import 'package:app_profileui/header_widget.dart';
import 'package:app_profileui/social_networks.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profil UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget buildBibliographie(){
    return const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        Text("Bibliographie",
        style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
        Padding(padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text("Disparu le 3 avril 2020,Golbert est ne en septembre 1941 a Sint-Louis."
        "grans-parents, au quartier de Guet Ndar ,a Saint-Louis.",
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w300
        ),),)
      ],
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final heihgt =MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
         HeaderWidget(
          backgroundImagePath: "assets/imagepont",
          profileImagePath: "assets/golbert-diagne.jpg",
          height: heihgt/2,
         ),
         const SizedBox(
          height: 75,
         ),
         const SocialMadiaWidget(),
         const SizedBox(
          height: 15,
         ),
         buildBibliographie()
        ],
      ),
    );
  }
}