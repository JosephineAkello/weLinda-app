import 'package:flutter/material.dart';
import './more_pages/more_info.dart';
import 'sexualassault.dart';
import 'more_pages/briefvideos.dart';

class Jua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListView(
        children: [
          Card(
            child: Container(
              padding: EdgeInsets.only(left: 16.0, top: 16.0),
              height: 250.0,
              child: ListTile(
                  title: Text(
                    'Information',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Issues handled | Learn about \n'
                              '1. Sexual Assault \n'
                              '2. Lack of education\n'
                              '3. Male chauvinism \n'
                              '4. Culture\n'
                              '5. Society\n',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        FlatButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MoreInfo()));
                            },
                            child: Text('More...'))
                      ])),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.only(
                left: 16.0,
              ),
              height: 250.0,
              child: ListTile(
                title: Text("There's hope",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0)),
                subtitle: Column(children: [
                  Text(
                      'There is no universal way that people feel after experiencing trauma. However, some common responses include:Shame, Guilt, Anger, Loneliness/Isolation Feeling unsafe Feeling emotionally blunted or emotionally out of control,Difficulty with concentration and Difficulty staying motivated'),
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    child: Text(
                      'More..',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.purple,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BriefVideos()));
                    },
                  ),
                ]),
              ),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.only(
                left: 16.0,
              ),
              height: 250.0,
              child: ListTile(
                title: Text('Sexual Assault',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0)),
                subtitle: Column(children: [
                  Text(
                      'Sexual assault entails any type of sexual activity or contact, including rape, that happens without your consent. Sexual assault can include non-contact activities, such as someone “flashing” you (exposing themselves to you) or forcing you to look at sexual images'),
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    child: Text(
                      'More..',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.purple,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SexualAssault()));
                    },
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
