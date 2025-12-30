void main(){
  //affectation fonction anonyme a une variable pour un appel plus tard
  var somme=(int x,int y){
    return x + y;
  };
   print(somme(10,20));
   disBonjour(nom: "Mamadou" ,(String message){
    print(message);
   });
}
   void disBonjour(void f(String mesage),{String nom=""}){
    f("Bonjour $nom. Soyez le bienvenue");
   }

