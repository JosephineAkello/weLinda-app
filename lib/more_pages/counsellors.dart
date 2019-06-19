import 'package:flutter/material.dart';

class Counsellors extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find counsellors'),
       
        centerTitle: true,
      ),
       backgroundColor: Colors.purple,
      body:Center(
        child:ListView(
      children: [
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
                              borderRadius: BorderRadius.circular(15.0)),
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
                                    color: Colors.purple, fontSize: 15),
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
                              borderRadius: BorderRadius.circular(15.0)),
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
                                    color: Colors.purple, fontSize: 15),
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
                            borderRadius: BorderRadius.circular(15.0),
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
                                    color: Colors.purple, fontSize: 15),
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
                            borderRadius: BorderRadius.circular(15.0),
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
                                    color: Colors.purple, fontSize: 15),
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
      ],
   ),), );
  }
}
