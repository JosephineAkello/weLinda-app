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
                width:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 500
                        : 900,
                //  height: 260.0,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Counsellors',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Dont get stressed!!Please feel free to consult these counsellors',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Image.asset(
                      'assets/counsel.png',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    RaisedButton(
                      color: Colors.purple,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Counsellors()));
                      },
                      child: Text(
                        'Check them out',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    )
                  ],
                )),
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
                  width:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 500
                          : 900,
                  height: 250.0,
                  child: Column(children: [
                    Text(
                      "FAQs",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        'You maybe having questions about Gender Based Violence, feel free to see the kind of questions others have asked before concerning the same.'),
                    RaisedButton(
                      color: Colors.purple,
                      child: Text(
                        "Read FAQs",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Faqs(),
                            ));
                      },
                    )
                  ])))
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
