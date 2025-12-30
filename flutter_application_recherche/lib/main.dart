import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: Icon(Icons.menu),
        title: Text("Mon Appli"),
        elevation: 18.0,
        actions: [
          IconButton(onPressed: (){},
          icon:Icon(Icons.search),),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
          )
        ],
        
      ),
      body: Center(
        child: Text("Flutter"),
      ),
    
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
            decoration: BoxDecoration(
            color: Colors.blue
            ),
             child: Text("Menu")
            ),
            ListTile(
              title: Text("Parametre"),leading: Icon(Icons.settings),
              subtitle: Text("Page de parametre"),
              trailing: Icon(Icons.chevron_right),
              onTap: (){},
            ),
            Divider(height: 2,),
            ListTile(
              title: Text("Profil"),leading: Icon(Icons.account_box),
              onTap: (){},
            ),
            Divider(height: 2,),
            ListTile(
              title: Text("help"),leading: Icon(Icons.help),
              onTap: (){},
            ),
            Divider(height: 2,),
            ListTile(
              title: Text("Quittez"),leading: Icon(Icons.close),
              onTap: (){},
            ),
            Divider(height: 2,),
            ListTile(
              title: Text("Historique"),leading: Icon(Icons.settings),
              onTap: (){},
            ),
          ],
        
        ),
      ),
    );
    
  }
}