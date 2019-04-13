import 'package:flutter/material.dart';
import './arifu.dart';
import './jua.dart';
import './ongea.dart';

void main() {
  runApp(Welinda());
}

class Welinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Color.fromRGBO(201, 230, 245, 1.0)),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation:
                Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
            title: Text("WeLinda",),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.info_outline),
                text: 'Jua',
              ),
              Tab(
                icon: Icon(Icons.import_contacts),
                text: 'Arifu',
              ),
              Tab(
                icon: Icon(Icons.forum),
                text: 'Ongea',
              )
            ]),
          ),
          body: TabBarView(children: [
            Jua(),
            Arifu(),
            Ongea(),
          ]),
        ),
      ),
    );
  }
}
