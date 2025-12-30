int add(int x,int y){
  return x+y;
}
typedef NouveauTypeFonction=int Function(int a,int b); //declaration d'un nouveau type de fonction avec typedef
void main(){
  var mavariablefn=add; // afffecter  de la fonction add a la variable mavariablefn
  print("Resultat de mavariablefn ${mavariablefn(10,20)}");
  NouveauTypeFonction mavariablefn2=add;
  print("Resultat de mavariablef2 ${mavariablefn2(10,20)}");
}

//Déclarez et utilisez une fonction directement comme argument d’une autre fonction 