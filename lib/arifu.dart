import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'quickreach.dart';
import 'faq.dart';

class Arifu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
            Card(
              child: Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  width:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 500
                          : 900,
                  height: 250.0,
                  child: 
                    ListTile(
                      title: Text(
                        'Counsellors',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        children: [
                          Image.asset(''),
                          Text('Dont get stressed!!Please feel free to consult these counsellors',  style: TextStyle(fontWeight: FontWeight.bold),),
                          RaisedButton(onPressed: (){},
                           child: Text('Check them out', style: TextStyle(fontWeight: FontWeight.bold),),),
                        ],
                    ),
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
              child: Faqs(),
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
