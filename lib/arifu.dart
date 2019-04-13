import 'package:flutter/material.dart';

class Arifu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: <Widget>[
            Card(
                child: Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  width: MediaQuery.of(context).orientation == Orientation.portrait
                      ? 500
                      : 900,
                  height: 250.0,
                  child: Text(
                    'Counsellors',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                )),
            Card(
                child: Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  width: MediaQuery.of(context).orientation == Orientation.portrait
                      ? 500
                      : 900,
                  height: 250.0,
                  child: Text(
                    'Quick reach',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                )),
            Card(
                child: Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  width: MediaQuery.of(context).orientation == Orientation.portrait
                      ? 500
                      : 900,
                  height: 250.0,
                  child: Text(
                    'FAQs',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ))
          ],
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.phone_in_talk),
      ),
    );
  }
}
