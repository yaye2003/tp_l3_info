import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildItem(
    {double height=200,
    double?width,
    Color color=Colors.orange,
    Widget? child,
    BoxShape? shape}){
      return Container(
        height: height,
        width: width ?? MediaQuery.of(context).size.width-40,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          shape: shape?? BoxShape.rectangle,
          gradient: LinearGradient(colors: [color,color.withOpacity(0.5)])
        ),
        child: child ?? Text(""),
      );
    }
  Widget columnOverSized(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildItem(color:Colors.red),
        buildItem(color:Colors.green),
        buildItem(color:Colors.blue),
        buildItem(color:Colors.pink)
      ],
    );
  }
  ListView verticalListView(){
    return ListView(
      children: [
        buildItem(),
        buildItem(color: Colors.red),
        buildItem(color: Colors.green),
        buildItem(color: Colors.blue),
         buildItem(color: Colors.pink),

      ],
    );
  }
  Row rowOverSized(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildItem(color: Colors.green,width: 200,shape: BoxShape.circle),
        buildItem(color: Colors.blue,width: 200,shape: BoxShape.circle),
        buildItem(color: Colors.pink,width: 200,shape: BoxShape.circle),
        buildItem(width: 200,shape: BoxShape.circle),
        buildItem(color: Colors.red,width: 200,shape: BoxShape.circle),

      ],
    );
  }
     /*  ListView

C’est un widget qui crée une liste défilante (scrollable) de widgets.

Il peut contenir n’importe quel type de widget, pas seulement des éléments de type “liste”.

On l’utilise quand on veut afficher une collection d’éléments (items) dans une liste verticale ou horizontale.*/
  ListView horizontalListViewFullPage(){
    return ListView(
      scrollDirection: Axis.horizontal,
       children: [
        buildItem(color: Colors.green,width: 200),
        buildItem(color: Colors.blue,width: 200),
        buildItem(color: Colors.pink,width: 200),
        buildItem(width: 200,shape: BoxShape.circle),
        buildItem(color: Colors.red,width: 200),

      ],
    );
  }
  
  ListView horizontalListViewFullPageshape(){
    return ListView(
      scrollDirection: Axis.horizontal,
       children: [
        buildItem(color: Colors.green,width: 200,shape: BoxShape.circle),
        buildItem(color: Colors.blue,width: 200,shape: BoxShape.circle),
        buildItem(color: Colors.pink,width: 200,shape: BoxShape.circle),
        buildItem(width: 200,shape: BoxShape.circle),
        buildItem(color: Colors.red,width: 200,shape: BoxShape.circle),

      ],
    );
  }

  Widget horizontalListViewSize(){
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildItem(color: Colors.green,width: 200),
        buildItem(color: Colors.blue,width: 200),
        buildItem(color: Colors.pink,width: 200),
        buildItem(width: 200,shape: BoxShape.circle),
        buildItem(color: Colors.red,width: 200),
        ],
      ),
    );
  }
  Widget horizontalListViewSized(){
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildItem(color: Colors.green,width: 200),
        buildItem(color: Colors.blue,width: 200),
        buildItem(color: Colors.pink,width: 200),
        buildItem(width: 200,shape: BoxShape.circle),
        buildItem(color: Colors.red,width: 200),
        ],
      ),
    );
  }

  Column  horizontalAndVerticalListViewsCombinedInSamaPage(){
    return Column(
      children: [
      horizontalListViewSized(),
      Expanded(
        child: Container(
          color: const Color(0xFF333230),
          child: verticalListView(),
        ),
      )
      ]
    );
  }

  Column  horizontalAndVerticalListViewsCombinedInSamaPage2(){
    return Column(
      children: [
        Expanded(child: horizontalListViewSized()),
        Container(
          height: MediaQuery.of(context).size.height/2,
          color: const Color(0xFF333230),
          child: verticalListView(),
        )
      ],
    );
  }
/*  ListTile

C’est un widget conçu pour être un élément de liste.

Il a une structure prête :

leading → icône ou image à gauche

title → texte principal

subtitle → texte secondaire

trailing → icône ou bouton à droite

On l’utilise dans une ListView ou un Column pour afficher des lignes formatées de manière standard*/
  Widget builderListView(int nombre){
    return ListView.builder(itemCount: nombre,itemBuilder: (context, index){
      return ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(Icons.person,color: Colors.white,),
        ),
        title: Text("Titre $index"),
        subtitle: Text("Sous titre $index"), //sous titre
        trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward)),
      );
    });
  }

  Widget separatedBuilderListView (int nombre){
    return ListView.separated(itemCount:nombre,itemBuilder: (context,index){
      return ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(Icons.person,color: Colors.white,),
        ),
        title: Text("Titre $index"),
        subtitle: Text("Sous titre $index"), //sous titre
        trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward)),
      );
    },
      //constructeur du separteur avec Divider()
      separatorBuilder: (context, index) => Divider(
        thickness: 3,
        color: Colors.grey.shade300,
      ),
     );
  }
  
  Widget buildListTile(int index){
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(Icons.person,color: Colors.grey,),
      ),
      title: Text("Titre $index",style: const TextStyle(
        color: Colors.white,fontWeight: FontWeight.w600
      )),
      subtitle: Text("Sous titre $index",style:  TextStyle(
        color: Colors.white54,fontWeight: FontWeight.w500)),
        trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios,color: Colors.white,),)
    );
  }

Widget  builderListViewWithCard (int nombre){
  return ListView.builder(
    shrinkWrap: true, // prend seulement la hauteur nécessaire
    physics: NeverScrollableScrollPhysics(), // désactive le scroll interne
    itemCount: nombre,itemBuilder: (context,index){
    var color =Colors.primaries[(index %Colors.primaries.length)][200];
    return Container(
      height: 200,
      child: Card(  //Avec Card donc il est possible de contrôler la taille de son contenu, la taille de l’ombre mais aussi la forme des bordures, sa couleur, ses marges extérieures.
        elevation: 5,
        color: color,
        margin: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 10
        ),
        child: buildListTile(index),
      ),
    );
  });
}
 //pour un affichage bien determine
/*Widget multipleCards() {
  return SingleChildScrollView(
    child: Column(
      children: [
        builderListViewWithCard(1),
        builderListViewWithCard(2),
        builderListViewWithCard(3),
        builderListViewWithCard(4),
        builderListViewWithCard(5),
        builderListViewWithCard(6),
      ],
    ),
  );
}  */
//on peut utliser une boucle pour l'affichage
Widget multipleCardsWithLoop() {
  int nombreDeListes = 5; // nombre de builderListViewWithCard que tu veux afficher

  return SingleChildScrollView(
    child: Column(
      children: List.generate(nombreDeListes, (index) {
        int param=index+1;
        return builderListViewWithCard(param); // chaque "mini-liste" d'une seule carte
      }),
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: columnOverSized(),
      //body: verticalListView(),
     // body: rowOverSized(),
     body:multipleCardsWithLoop(),
    
    );
  }
}