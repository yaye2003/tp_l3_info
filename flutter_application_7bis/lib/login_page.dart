import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.grey[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.account_box_rounded,size: 100,color: Colors.deepPurple,),
          const Text("Login",style: TextStyle(fontSize: 30),),
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25),
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              color: Colors.deepPurple[50],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "Email",
                icon: Icon(Icons.email_outlined)
              ),
            ),
          ),
           const SizedBox(height: 50,),
           Container(
            padding:  const EdgeInsets.only(left: 25),
            margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
            decoration: BoxDecoration(
              color: Colors.deepPurple[50],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "Password",
                icon: Icon(Icons.lock_clock_outlined),
                suffixIcon: Icon(Icons.visibility_off)
              ),
            ),

           ),
           Container(
            margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){},
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,elevation: 10
            ),
            child: const Text("Login",style: TextStyle(fontSize: 20),),
           ),
           ),
           Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){},
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,elevation: 10,foregroundColor: Colors.deepPurple
            ),
            child: const Text("Register",style: TextStyle(fontSize: 20),),
           ),
           )
           

        ],
      ),
    );
  }
}