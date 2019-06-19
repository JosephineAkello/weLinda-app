import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import './arifu.dart';
import './jua.dart';
import './ongea.dart';
import 'more_pages/splash.dart';

void main() {
  runApp(Welinda());
}
bool hasRun = false;
enum selectedIndex {map, partners, about}

class Welinda extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WelindaState();
  }
}


class WelindaState extends State<Welinda> {

  Future<dynamic> checkIfFirstLaunch() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('hasRun');
  }



  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
        future: checkIfFirstLaunch(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.data == null) {
            hasRun = false;
          } else {
            hasRun = true;
          }
          switch(snapshot.connectionState){
          case ConnectionState.none:
            return Container();
            case ConnectionState.waiting:
              return Container();
            case ConnectionState.active:
              return Container();
            case ConnectionState.done:
          return MaterialApp(
              debugShowCheckedModeBanner : false,
            theme: ThemeData(
              fontFamily: 'Halvetica',
              buttonColor: Colors.blueGrey,
                primarySwatch: Colors.purple,
                accentColor: Color.fromRGBO(201, 230, 245, 1.0)),
            home: !hasRun
                ? MySplashScreen()
                : DefaultTabController(
                    length: 3,
                    child: Scaffold(
                      appBar: AppBar(
                        actions: <Widget>[
                          /*
                          Add an option to open new page here
                           */

                          PopupMenuButton<selectedIndex>(
                            onSelected: (selectedIndex value) {
                              setState(() {

                              });
                            },
                            itemBuilder: (BuildContext context) => <PopupMenuItem<selectedIndex>>[
                              const PopupMenuItem<selectedIndex>(
                                value: selectedIndex.map,
                                child: Text('Maps'),
                              ),
                              const PopupMenuItem<selectedIndex>(
                                value: selectedIndex.partners,
                                child: Text('Partners'),
                              ),
                              const PopupMenuItem<selectedIndex>(
                                value: selectedIndex.about,
                                child: Text('About'),
                              ),


                            ],
                          ),

                        ],
                        elevation:
                            Theme.of(context).platform == TargetPlatform.iOS
                                ? 0.0
                                : 4.0,
                        title: Text(
                          "WeLinda",
                        ),
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
          );}
        });
  }


}
