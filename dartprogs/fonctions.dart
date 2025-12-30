void main(){
  classicalFunction();
  optionalParameters();
}

void classicalFunction() {
  afficheMonNom('Mamadou');
  afficheMonNom('Ndeye Fatou');
  final sum=add(5,3);
  print("5 + 3= $sum");
  print('Factoriel 10 est ${factoriel(10)}');
}

void afficheMonNom(String s) {
  print('Bonjour $s');
 // print(s);
}
int add(int a,int b){
  return a+b;
}
 int factoriel(int number){
  if(number<=0){
    return 1;
    }
     return number * factoriel(number-1);
 }
void optionalParameters() {
  fparametreOptionnels("Mamadou",20);
  fparametreOptionnels("Seynabou");
  fparametreOptionnels();
  optionalParametre();
  optionalParametres();
  
  
}

void  fparametreOptionnels ([String? nom,int? age]){ // pour que les parametre soient optionnels on utilise []
 /*L'une des nouvelles fonctionnalités ajoutées par Dart concerne les paramètres facultatifs (optionnels). Si vous placez la liste des paramètres de votre fonction entre crochets [], ces paramètres peuvent être omis sans que le compilateur ne génère d'erreurs.  Les paramètres optionnels peuvent être omis lors de l’appel */

 final vraiNom=nom?? 'Inconnu'; //affecte 'Inconnu' si nom n'est pas fourni
 final vraiAge=age ?? 0; //affecte 0 si age n'est pas fourni
 print('$vraiNom a $vraiAge annee(s).'); //Les paramètres optionnels non fournis auront la valeur null sauf si on les initialise avec une valeur par défaut.
 }

 void optionalParametre(){
  fparametreNommes(salutation :'Salutations respectueuses');
  fparametreNommes(nom : 'Babacar');
fparametreNommes(nom : 'Adama',salutation : 'Bienvenue');
}
void fparametreNommes({String ? salutation,String ? nom}){
  final vraiSalutation=salutation ?? 'Bonjour';
  final vraiNom=nom ?? 'Personne mystere';
  print('$vraiSalutation ,$vraiNom !');
   /*Paramètres nommés : Dart prend également en charge les paramètres facultatifs nommés, avec des accolades {}.Lorsque vous appelez une fonction avec des paramètres nommés, vous devez spécifier le nom du paramètre. Vous pouvez appeler les paramètres dans n'importe quel ordre. Pour illustrer cela écrivez cette fonction avec les paramètres nommés : */
}
void optionalParametres(){
  print(suiteArythmetic(10,u0:10,pas:3));
  print(suiteArythmetic(10));
  print(suiteArythmetic(10,u0:10));
  print(suiteArythmetic(10,pas:3));


}
 // []= parametre facultatif ou optional
int suiteArythmetic(int n,{int u0=1,int pas=1}){ // les parametre nommees {} pevent etre fournies dans nimport quel ordre
//le parametre u0 est nomme par default et optional 
if(n==0){
return u0;
} else
return n + suiteArythmetic(u0:u0,n-1,pas:pas);


}

/*Pour simplifier les choses, une closure ou lambda-fonction est une 
fonction enregistrée dans une variable qui peut être appelée ultérieurement. Ils sont 
souvent utilisés pour les rappels, par exemple lorsque l'utilisateur appuie sur un bouton ou 
lorsque l'application reçoit des données d'un appel réseau. 
Les closures peuvent être enregistrées dans des variables et utilisées comme 
paramètres pour d'autres fonctions. Ils sont même écrits en ligne lors de l’appel d'une 
fonction qui attend une closure en tant que propriété. */