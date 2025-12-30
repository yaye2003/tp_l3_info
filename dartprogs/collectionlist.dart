void main(List<String> args){
  final List<String> jours=[];
  print("La liste est vide : ${jours.isEmpty}");
  jours.add("lundi");
  jours.add("Mardi");
  jours.add("Mercredi");
  print("$jours est de taille ${jours.length}");
  jours.addAll([
    "Jeudi","Vendredi","Samedi","Dimanche"
  ]);
  print("Les ${jours.length} de la semaine sont :$jours");
  print("${jours.first} -->${jours.last}");

  /*Créer une copie de la liste avec la méthode toList puis mélangez les éléments 
avec shuffle et concaténez-les avec la méthode join */
var ordrealeatoire=jours.toList(); //creation d'une copie de la liste
ordrealeatoire.shuffle(); //melange du contenu
print("Dans un ordre aleatoire :${ordrealeatoire}");
print("Liste vers csv :${jours.join(';')}");
print("Jours non tries ${ordrealeatoire}"); //avec sort on doit indiquer la fonction de comparaison
ordrealeatoire.sort((String str1,String str2)=>str1.compareTo((str2)));
ordrealeatoire.sort(); //par default le trie se fait par ordre alphabetique ou decroissante
print("Jours tries ${ordrealeatoire}");
var nombres=[13,4,15,6];
nombres.sort();
print("Nombres tries ${nombres}");
 //map permet d'executer des instructions sur chaque element
var nouveuxJours=jours.map((unJour){return unJour.toUpperCase();},).toList();
print("$jours -->$nouveuxJours");
//La méthode reduce permet de faire un traitement qui renvoie un élément de type élément de la liste. 
//La méthode .reduce sert à réduire une liste à une seule valeur en combinant ses éléments deux par deux avec une fonction que tu définis.
//Un Iterable en Dart est simplement une collection d’éléments que l’on peut parcourir un par un
final nombresReels=<double>[10,2,5,0.5];
var somme=nombresReels.reduce((value,element)=>value+element);
var moyenne=nombresReels.reduce((value,element)=>value +element / nombresReels.length);
var max=nombresReels.reduce((value,element)=>element>value?element:value);
var min=nombresReels.reduce((value,element)=>element<value?element :value);
print("Tableau -->$nombresReels");
print("Max :$max--Min:$min--Somme:$somme --Moyenne:$moyenne");

nombresReels.forEach((element){
  print("${2*element}");
});

print("---------------------");
for(var nb in nombresReels){
  print("${2*nb}");
}





}
