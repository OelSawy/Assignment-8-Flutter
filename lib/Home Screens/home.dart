import 'package:flutter/material.dart';
import 'package:whatsapp_v2/Home%20Screens/home_Chats/homeChats.dart';
import 'package:whatsapp_v2/core.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          backgroundColor: AppColors.primary,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.camera_alt_outlined)
            ),
            IconButton(
              onPressed: () => showSearch(
                context: context,
                delegate: DataSearch()
              ), 
              icon: const Icon(Icons.search)
            ),
            IconButton(
              onPressed: () => showMenu(
                context: context,
                position: RelativeRect.fromDirectional(
                  textDirection: TextDirection.ltr, 
                  start: 1, 
                  top: 0, 
                  end: 0, 
                  bottom: 0
                ),
                items: const [
                  PopupMenuItem(
                    value: 0,
                    child: Text("New group")
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Text("New broadcast")
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Linked devices")
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text("Starred messages")
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text("Settings")
                  )
                ]
              ), 
              icon: const Icon(Icons.more_vert_rounded)
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            tabs: [
              Container(
                alignment: Alignment.center,
                height: 40,
                width: screenSize.width *0.05,
                child: const Icon(Icons.groups),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: screenSize.width *0.2,
                child: const Text("CHATS", style: TextStyle(fontSize: 18)),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: screenSize.width *0.2,
                child: const Text("STATUS", style: TextStyle(fontSize: 18)),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: screenSize.width *0.2,
                child: const Text("CALLS", style: TextStyle(fontSize: 18)),
              )
            ],
          )
        ),
        body: TabBarView(
          children: [
            Text("data"),
            HomeChats(),
            Text("data"),
            Text("data")
          ]
        ),
      )
    );
  }
}