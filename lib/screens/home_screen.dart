import 'package:flutter/material.dart';
import 'package:tab_bar/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(appBar: AppBar(
        title: Text("HOME"),
        actions: [
            PopupMenuButton(
            offset: Offset(3, 40),
              itemBuilder: (context){
              return ["settings","profile","log out"].map((e){
                return PopupMenuItem(
                child: Text(e),
                onTap: (){
                  //print(e);
                  //Navigator.push(context, ());
                  

                },
                );
              } ).toList();
              
            }
            
            )

        ],



bottom: TabBar(
  indicatorColor: Colors.amberAccent,
  tabs: [
Tab(icon: Icon(Icons.home), text: "Home",),
Tab(icon: Icon(Icons.chat), text: "Chat",),
Tab(icon: Icon(Icons.star_outline_sharp), text: "story",),
]

),

      ),
      
      body: TabBarView(children: [
        Center(child: Text("Home",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 35, 22, 76)),)),
         Center(child: Text("chat")),
          Center(child: Text("story")),
      ]),
      
      ),
    );
  }
}