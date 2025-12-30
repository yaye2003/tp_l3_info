//fonction ajout classique
int ajouter(int a,int b){
  return a+b;
}

//version arrow
int ajouterArrow(int a,int b)=>a+b;

//Bloc a une instruction sous forme normal
void disBonjour(){
  print("Dis bonjour");
}

//version arrow
void disBonjourArrow()=>print("Dis bonjour");

//fonction avec 2 tests lies
bool estMajeurArrow(int age)=>age >=18 ?true :false;
void main(){
  print(ajouterArrow(2,4));
  disBonjourArrow();
  print(estMajeurArrow(35));
}


/* 
? : Qualificateur permettant à une variable d’avoir la valeur null  
! :Operateur Assertion Null 
?? :Operateur Si-null 
??= :Affectation si Null 
?.   :Accès à une méthode si Null 
?.. Operateur de cascade avec null 
?[] Operateur indexe avec null (accéder à un élément si la collection est non 
null)
*/