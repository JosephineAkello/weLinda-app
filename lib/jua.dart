import 'package:flutter/material.dart';
import './more_pages/more_info.dart';

class Jua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: Container(
            padding: EdgeInsets.only(left: 16.0, top: 16.0),
            height: 250.0,
            child: ListTile(
                title: Text(
                  'Information',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
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
                      FlatButton(onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MoreInfo() ));
                      }, child: Text('More...'))
                    ])),
          ),
        ),
        Card(
          child: Container(
              padding: EdgeInsets.only(
                left: 16.0,
              ),
              height: 250.0,
              child: Text("There's hope",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
        ),
        Card(
          child: Container(
              padding: EdgeInsets.only(
                left: 16.0,
              ),
              height: 250.0,
              child: Text('Sexual Assault',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
        ),
      ],
    );
  }
}
