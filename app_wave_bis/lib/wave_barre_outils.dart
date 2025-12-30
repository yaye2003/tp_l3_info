import 'package:flutter/material.dart';
class WaveBarreOutils extends StatefulWidget {
  const WaveBarreOutils({super.key});

  @override
  State<WaveBarreOutils> createState() => _WaveBarreOutilsState();
}

class _WaveBarreOutilsState extends State<WaveBarreOutils> {
  Widget builIconColumnButtonWithText({Color? color,IconData?icon,String? label}){
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFFE9F6FE),
          child: Icon(icon ?? Icons.task,color:color ?? Colors.blue,),
        ),
        const SizedBox(height: 5,),
        Text(label ?? "No Label",style: TextStyle(
          fontWeight: FontWeight.w600,color: color ?? const Color(0xFF4947CD)),)
      ],
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          builIconColumnButtonWithText(
            icon:Icons.person,label:"TRANSFERT",color:const Color(0xFF4749CD)),
             builIconColumnButtonWithText(
            icon:Icons.person,label:"PAIEMENTS",color:const Color(0xFFF47F20)),
             builIconColumnButtonWithText(
            icon:Icons.person,label:"CREDITS",color:const Color(0xFF1DC8FF)),
             builIconColumnButtonWithText(
            icon:Icons.person,label:"CREDITS",color: Colors.red),
             
        ],
      ),
    );
  }
}