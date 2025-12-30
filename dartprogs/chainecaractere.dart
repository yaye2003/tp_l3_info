void main(){
  terrainDeJeuChaineDeCaracteres();
  
}

void terrainDeJeuChaineDeCaracteres() {
  basicStringDeclaration();
  multiLineString();
   modernInterpolation();
  basicStringDeclaration();
 
}

void multiLineString() {
  //Les quotes tripes permettent de garder le format de la chaine sur plusieurs lignes.
  final femmeNoire='''
Femme nue,femme noire
Vetue de ta couleur qui est vie,de ta forme qui est beaute
J'ai grandi a ton ombre;la douceur de tes mains bandait mes yeux


Et voila qu'au coeur de l'ete et e de Midi,
Je te decouvre ,Terre promise ,au haut d'un haut col calcine
Et ta beaute me foudroite en plein coeur,comme l'eclaire d'un aigle 
''';
print(femmeNoire);
}
 void concatenationTraditionelle(){
  final hello='Hello';
  final world="world";
  final chainesCombinees=hello+ ' ' +world;
  print(chainesCombinees);
 /*Enfin, l’une des tâches les plus courantes que les programmeurs effectuent avec des 
chaînes consiste à les composer pour créer des chaînes plus complexes. Dart prend en 
charge à la fois la méthode traditionnelle de concaténation, ainsi qu'une méthode plus 
moderne appelée interpolation de chaînes. La manière traditionnelle de concaténer des 
chaînes utilise simplement le symbole d'addition (+) entre plusieurs chaînes.*/ 
}
void modernInterpolation(){
  /*Le langage prend également en charge la syntaxe d'interpolation. La notation du signe 
dollar $ ne fonctionne que pour des valeurs uniques, telles qu’un entier. Si vous avez besoin 
de quelque chose de plus complexe, vous pouvez ajouter des accolades après le signe 
dollar ${} et écrire n'importe quelle expression Dart. */
  final annee=2011;
  final interpolated='Dart est cree en $annee.';
  print(interpolated);
  final age=20;
  final howOld='je suis ${age>=18 ?'Majeur' :' Mineur'}.';
  print(howOld);
}
void basicStringDeclaration() {
  print('Quotes simples');
  final unePharse='Une chaine avec l\'echappement de caracteres'; //pour avoir l'apostrophe on doit utiliser l'echappement
  print(unePharse);
  print("Bonjour pour les quotes double");
  final unAutrePhrase="Des 'quotes simples' dans des quotes doubles!";
  print(unAutrePhrase);
  final unTroisiemePhrase='Des "quotes doubles" dans des quotes simples!';
  print(unTroisiemePhrase);
}

