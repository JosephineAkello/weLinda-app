import 'package:flutter/material.dart';

class QuickResearch extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      ListTile(
        title: Text(
          'Quick Reach',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      Card(
        child: ListTile(
          title: Text('Brightside Treatment And Rehabilitation Center'),
          trailing: SizedBox(
            child: RaisedButton(
              child: Text(
                'Read more..',
                style: TextStyle(color: Colors.white),
              ),

              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        title: Text('justin.farrar@yahoo.com'),
                        content: Text('0722867693, 0726552476, 0722901804'),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'close',
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 15),
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
          title: Text('Asumbi Treatment And Rehabilitation Centre (Karen)'),
          trailing: SizedBox(
            child: RaisedButton(
              child: Text(
                'Read more..',
                style: TextStyle(color: Colors.white),
              ),

              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        title: Text('info@asumbi-tcentre.org'),
                        content: Text('020-2664540, 0721287822'),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'close',
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 15),
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
          title: Text('Kenyatta National Hospital'),
          trailing: SizedBox(
            child: RaisedButton(
              child: Text(
                'Read more..',
                style: TextStyle(color: Colors.white),
              ),

              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        title: Text('dmh.knh@gmail.com​​ ​​'),
                        content: Text('0713033028, 2726300-9 Ext. 44101'),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'close',
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 15),
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
          title: Text('Precision Counseling Home'),
          trailing: SizedBox(
            child: RaisedButton(
              child: Text(
                'Read more..',
                style: TextStyle(color: Colors.white),
              ),

              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        title: Text('info@precisioncounseling.org'),
                        content: Text('0702378314 ,​​ 0721305450'),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'close',
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 15),
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
          title:
              Text('New-Life Rehabilitation Counseling​​​​ Centre – Nairobi'),
          trailing: SizedBox(
            child: RaisedButton(
              child: Text(
                'Read more..',
                style: TextStyle(color: Colors.white),
              ),

              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        title: Text('info@newliferehab.co.ke'),
                        content: Text('0722 785 440'),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'close',
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 15),
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
          title: Text('Emmanuel Resource Centre'),
          trailing: SizedBox(
            child: RaisedButton(
              child: Text(
                'Read more..',
                style: TextStyle(color: Colors.white),
              ),

              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        title: Text('erc.trust@gmail.com'),
                        content: Text('0722565397, 0732761666'),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'close',
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 15),
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
          title: Text(
              'Nairobi Place Addiction Treatment and Specialized Medical Centre'),
          trailing: SizedBox(
            child: RaisedButton(
              child: Text(
                'Read more..',
                style: TextStyle(color: Colors.white),
              ),

              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        title: Text(
                            'info@nairobi-place.org,admin@nairobi-place.org'),
                        content: Text('020-267839, 0735-550000, 0733-440000'),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'close',
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 15),
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
          title:
              Text('Mathari Hospital Treatment and ​​ Rehabilitation Centre'),
          trailing: SizedBox(
            child: RaisedButton(
              child: Text(
                'Read more..',
                style: TextStyle(color: Colors.white),
              ),

              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        title: Text('Not Available'),
                        content: Text('0703 848536, 0721336017'),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'close',
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 15),
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
          title: Text('SAPTA Corner​​​​ House – Kimathi Street, Nairobi'),
          trailing: SizedBox(
            child: RaisedButton(
              child: Text(
                'Read more..',
                style: TextStyle(color: Colors.white),
              ),

              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        title: Text('evans@sapta.or.ke'),
                        content: Text('0724511709, 0722216032'),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'close',
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 15),
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
          title: Text('Springs of Hope Rehabilitation Centre'),
          trailing: SizedBox(
            child: RaisedButton(
              child: Text(
                'Read more..',
                style: TextStyle(color: Colors.white),
              ),

              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        title: Text('alex.ongadi@yahoo.com'),
                        content: Text('0727367837/0722503743'),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'close',
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 15),
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
    ]);
  }
}
