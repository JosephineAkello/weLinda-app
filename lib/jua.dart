import 'package:flutter/material.dart';
import 'sexualassault.dart';

class Jua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ListView(
      children: [
        Card(
          child: Container(
              padding: EdgeInsets.only(
                left: 16.0,
              ),
              height: 250.0,
              child: Text(
                'Information',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              )),
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
            child: ListTile(
              
              title: Text('Sexual Assault',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0)),
              subtitle: Column(
                children: [
                 Text( 'Sexual assault entails any type of sexual activity or contact, including rape, that happens without your consent. Sexual assault can include non-contact activities, such as someone “flashing” you (exposing themselves to you) or forcing you to look at sexual images'
                      ),
                      SizedBox(height: 10.0,),
                RaisedButton(
                  child: Text('More..',style: TextStyle(color: Colors.white),),
                  color: Colors.purple,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SexualAssault()));
                  },
                ),
                ]),
            ),
          ),
           
        ),
      ],
    ), );
  }
}
