void main(){
  terrainDeJeuVariables();
  //variableNonType();
  //interpolationDeType();
  //variableImmutable();
}

void terrainDeJeuVariables() {
  typeDeBse();
   variableNonType();
  interpolationDeType();
  variableImmutable();
}
 void variableNonType(){
  dynamic camelon='yahoo!!!';  /*Dart a un type spécial définie par le mot clé dynamic, qui permet de faire du typage dynamique (désactive la vérification de type, le type d’une variable peut changer au cours de l’exécution sans générer des erreurs). Si vous déclarer une variable de ce type, la variable peut être n'importe quoi. */
  print(camelon.runtimeType);  //runtimeType c'est pour connaitre la le type d'un variable
  camelon=3.14;
    print(camelon.runtimeType);
    camelon=[1,2,3];
      print(camelon.runtimeType);
  
 }
 void interpolationDeType(){
    var anInteger=15;  /* le mot-clé var de Dart permet de déclarer une variable sans explicitement donner 
son type et Dart va déduire son type à partir de celui de la valeur utilisée pour 
l’initialiser. Le mot clé var est différent dynamic. Avec var, une fois que le type est 
déduit, Dart se souviendra du type et la variable ne pourra pas changer de type 
ultérieurement. Cependant, les valeurs restent modifiables  */
    var anDouble=27.6; 
    var anBoolean=false;
    print(anInteger.runtimeType);
    print(anInteger);
    print(anDouble.runtimeType);
    print(anDouble);
    print(anBoolean.runtimeType);
    print(anBoolean);
 }

void variableImmutable(){
 /*Pour les variables immuables (dont la valeur ne peut être écrite qu’une seule fois),  Dart a deux mots-clés quipeuvent être utilisés pour indiquer l'immuabilité : final et const. La principale différence entre final et const est que la valeur d’un const doit être déterminé au moment de la compilation ; par exemple, vous ne pouvez pas avoir const contenant DateTime.now() puisque la date et l'heure actuelles ne peuvent être déterminées qu'au moment de l'exécution, pas au moment de la compilation. Les variables final ne peuvent faire l’objet d’une affectation qu'une seule fois, mais en utilisant des objets, il est possible de modifier la valeur de ses champs.Les variables const sont des constantes au moment de la compilation et sont entièrement immuables ; rien dans ces variables ne peut être modifié une fois qu'elles ont été attribuées. */ 
 final int immuableInt=10000;
 final double immutableDouble=10.015e10;
 print(immuableInt) ;
 print(immutableDouble);
 final interpolationInteger;
 final interpolationDouble;
 interpolationInteger=123456;
 interpolationDouble=123.456;
 print(interpolationInteger);
 print(interpolationDouble);
 const aFullySealeVariable=true;
 print(aFullySealeVariable);
 }
void typeDeBse() {
  int quatre=4;
  double pi=3.14;
  num unNombre=1.42e5;
  bool oui=true;
  bool non=false;
  int ? nothing;
  print(quatre);
  print(pi);
  print(unNombre);
  print(oui);
  print(non);
  print(nothing);
}