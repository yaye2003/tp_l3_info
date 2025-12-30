bool estImpair(int x){
  return x%2 !=0;
}

bool estpair(int x){
  return x%2 ==0;
}
//l'argument de la fonction est une variable
void afficher(bool varFonctionTest(int value)){
  for(int i=0;i<10;i++){
    if(varFonctionTest(i)){
      print(i);
    }
  }
}

void main(){
  print("Nombres pair:");
  afficher(estpair);

  print("Nombres impairs:");
  afficher(estImpair);
}