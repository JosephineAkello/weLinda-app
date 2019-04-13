import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  width:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 500
                          : 900,
                  height: 250.0,
                  child: ListView(children: <Widget>[
                    ListTile(
                      title: Text(
                        'Counsellors',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Counsellor 1'),
                        trailing: SizedBox(
                          child: RaisedButton(
                            child: Text(
                              'Read more..',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.purple,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.purple[100],
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      title: Text('Cousellor name'),
                                      content: Text('phonenumber'),
                                      actions: <Widget>[
                                        MaterialButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'close',
                                            style: TextStyle(
                                                color: Colors.purple,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    );
                                  });
                            },
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Counsellor 2'),
                        trailing: SizedBox(
                          child: RaisedButton(
                            child: Text(
                              'Read more..',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.purple,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.purple[100],
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      title: Text('Cousellor name'),
                                      content: Text('phonenumber'),
                                      actions: <Widget>[
                                        MaterialButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'close',
                                            style: TextStyle(
                                                color: Colors.purple,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    );
                                  });
                            },
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Counsellor 3'),
                        trailing: SizedBox(
                          child: RaisedButton(
                            child: Text(
                              'Read more..',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.purple,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.purple[100],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      title: Text('Cousellor name'),
                                      content: Text('phonenumber'),
                                      actions: <Widget>[
                                        MaterialButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'close',
                                            style: TextStyle(
                                                color: Colors.purple,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    );
                                  });
                            },
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Counsellor 4'),
                        trailing: SizedBox(
                          child: RaisedButton(
                            child: Text(
                              'Read more..',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.purple,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.purple[100],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      title: Text('Cousellor name'),
                                      content: Text('phonenumber'),
                                      actions: <Widget>[
                                        MaterialButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'close',
                                            style: TextStyle(
                                                color: Colors.purple,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    );
                                  });
                            },
                          ),
                        ),
                      ),
                    ),
                  ])),
            ),
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
        onPressed: () {
       launch("tel://116");
        },
        child: Icon(Icons.phone_in_talk),
      ),
    );
  }
}
