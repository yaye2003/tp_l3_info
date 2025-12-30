import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projet_dev_mobile_2024/animation.dart';
import 'package:projet_dev_mobile_2024/social_page.dart';
import 'package:projet_dev_mobile_2024/main.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // FOND GLOBAL DE L’APPLICATION
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF5F7FA),
              Color(0xFFE8ECF1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
            child: Column(
              children: [

                /// IMAGE 1 — IMAGE INCHANGÉE
                /// FOND IDENTIQUE À L’APPLICATION
                FadeAnimation(
                  delay: 1500,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFF5F7FA),
                          Color(0xFFE8ECF1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/smart agriculture (4).png',
                      height: 170,
                      width: 500,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// IMAGE 2
                FadeAnimation(
                  delay: 2500,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'images/istockphoto-960478834-1024x1024.jpg',
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// TEXTE
                FadeAnimation(
                  delay: 3500,
                  child: Text(
                    "Prédisez les rendements agricoles grâce à l’analyse des données",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                /// BOUTON
                FadeAnimation(
                  delay: 4500,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: dRed,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.all(14),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SocialPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "COMMENCER MAINTENANT",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
