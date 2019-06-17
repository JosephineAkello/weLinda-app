import 'package:flutter/material.dart';

import './bot.dart';
import 'chatroom.dart';

class ChatSpace extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatSpaceState();
  }
}

class ChatSpaceState extends State<ChatSpace> {
  @override
  Widget build(BuildContext context) {
    double expandedHeight = MediaQuery.of(context).size.height * 0.5;
    double expandedWidth = MediaQuery.of(context).size.width * 0.86;
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          // backgroundColor: Colors.black12,
          appBar: AppBar(
            title: Text('Chat Room'),
            centerTitle: true,
            bottom: TabBar(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                labelColor: Colors.white,
                indicatorColor: Colors.pink,
                unselectedLabelColor: Colors.white30,
                tabs: [
                  Tab(
                    text: 'Forum',
                  ),
                  Tab(
                    text: 'Assistant',
                  )
                ]),
          ),
          body: TabBarView(children: [ChatRoom(), BotAgent()]),
        ));
  }
}
