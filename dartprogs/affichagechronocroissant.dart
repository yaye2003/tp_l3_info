import 'dart:async';
void main(){
  for(int i=0;i<5;i++){
    print("hello $i");
    print(i);
  }

  //Ecrire un programme  qui affiche un message chaque seconde pendant dix  secondes
  int i=1;
  //syntaxe  Timer.periodic(Duration duration, void Function(Timer) callback) 
  Timer.periodic(Duration(seconds: 1),(timer) {
   if(i<=10){
      print("$i seconde(s)");
      i++;
    } else
    timer.cancel();
  }); 

}
