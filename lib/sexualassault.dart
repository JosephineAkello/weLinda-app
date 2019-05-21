import 'package:flutter/material.dart';

class SexualAssault extends StatelessWidget{

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Info on Sexual Assault"),),
    body:Container(
      
      child: ListView(
        children: <Widget>[
          ListTile(
          title: Image.asset('assets/dead.jpeg'),
          subtitle: Text('Women die every year as a result of sexual asault and others also just commit suicide because they are ashamed and feel betrayed and abandoned, Us at WeLinda encourage them to stand up and fight back at their proprietrators, We dont promise to restore what was once theirs(dignity) but we promise to be with them every step of their recovery'),
          ),
           ListTile(
          title: Image.asset('assets/enough.jpeg'),
          subtitle: Text('They should stand up together and put a stop to this inhuman acts so that others dont go through what they went through by sharing their stories '),
          ),
           ListTile(
          title:Image.asset('assets/fight.jpeg'),
          subtitle: Text('They should nolonger be known us the fragile creatures that can be picked on and totured they should stand up for what they believe in'),
          ),
           ListTile(
          title:Image.asset('assets/hdfgdhg.png'),
          subtitle:Text('They should come out and let it known that they shall never be bullied, hurt, intimidated or even looked down upon for they are stronger than they think'),
          ),
           ListTile(
          title:Image.asset('assets/hurt.jpeg'),
          subtitle: Text('We shall never see tears ever again rolling down the cheecks of our mothers, sisters or even friends , we will stand up with all those who were defiled and say no to sexual assault ,,,Never again'),
          ),
           ListTile(
          title:Image.asset('assets/if.jpeg'),
          subtitle:Text('WeLinda gives those who once had no voice the loudest and pitch perfect voice to say no to sexual assault and gender based violence , made possible by Mojo, Chris and Keronei'),
          ),
          
        ],
)
      ),
    );
  }
}