import 'dart:async';
void main(){
  for(int i=0;i<5;i++){
    print("hello $i");
    print(i);
  }

int b=10;
  //syntaxe  Timer.periodic(Duration duration, void Function(Timer) callback) 
  print('//********************//');
  Timer.periodic(Duration(seconds: 1),(timer) {
    if(b>0){
      print("$b seconde(s)");
      b=b-1;
    } else
    timer.cancel();
  });
}