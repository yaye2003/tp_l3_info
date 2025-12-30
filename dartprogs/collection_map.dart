void main(List<String>args){
var superficieRegions=Map<String,int
>();
superficieRegions={
  "Dakar":547,
  "Ziguinchor":7352,
  "Saint-Louis":19241,
};
superficieRegions["Diourbel"]=4824;
superficieRegions["Tambacounda"]=42364,
superficieRegions["Thies"]=6670;

print("Superficie des regions $superficieRegions");
print("Meilleur presentation avce  ForEach");
superficieRegions.forEach((String key,int value){
  print("%{key.padRight(15)}-->$value")
});

}

void printEmployer(){
  Map employers={
    200:{
      "nom":"Abdoulaye Ndiaye",
      "Service":"Compatibite",
      "Salaire":800000
    },
    201:{
      "nom":"Marieme Diouf"
      "Service":"Vente",
      "Salaire":950000,
    },
    600:{
      "nom":"Fatou Diallo"
      "Service":"Marketing",
      "Salaire":975000,
    },

  };
  print("-"*85);
  String  headerLine="|" +"ID".padLeft(20)+ "|";
  employers[200].keys.forEach((elemnt){
    headerLine+=element.toString().padLeft(20) +"|";
  });
  print(headerLine);
  print("-"*85);
  employers.forEach(()keyEmployer,dataEmployer){
    print("|${keyEmployer.toString().padLeft(20)}"
    "|${datEmployer['nom'].padLeft(20)}")
  })
}