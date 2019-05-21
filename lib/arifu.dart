import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'more_pages/counsellors.dart';
import 'quickreach.dart';
import 'faq.dart';

class Arifu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            child: Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              width: MediaQuery.of(context).orientation == Orientation.portrait
                  ? 500
                  : 900,
              height: 250.0,
              child: ListTile(
                title: Text(
                  'Counsellors',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                subtitle: ListTile(
                    subtitle: Column(
                  children: <Widget>[
                    Image.asset('assets/counsel.png'),
                    Text(
                      'Dont get stressed!!Please feel free to consult these counsellors',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Counsellors()));
                      },
                      child: Text(
                        'Check them out',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
              ),
            ),
          ),
          Card(
              child: Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            width: MediaQuery.of(context).orientation == Orientation.portrait
                ? 500
                : 900,
            height: 250.0,
            child: QuickResearch(),
          )),
          Card(
              child: Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            width: MediaQuery.of(context).orientation == Orientation.portrait
                ? 500
                : 900,
            height: 250.0,
            child: Column(
              children: [
                Text('You maybe having questions about Gender Based Violence, feel free to see the kind of questions others have asked before concerning the same.'),
                RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>  Faqs(),));
                  },
                )
               
              ]
              )
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launch("tel://1195");
        },
        child: Icon(Icons.phone_in_talk),
      ),
    );
  }
}
