import 'package:flutter/material.dart';

class SexualAssault extends StatelessWidget{

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stop Sexual Assault"),),
    body:Container(
      
      child: ListView(
        children: <Widget>[
         Card(
           child: Container(
             height: 400.0,
             child:ListTile(
          title: Image.asset('assets/dead.jpeg',height: 250.0,),
          subtitle: Text('\nWomen die every year as a result of sexual asault and others also just commit suicide because they are ashamed and feel betrayed and abandoned, Us at WeLinda encourage them to stand up and fight back at their proprietrators.\n'),
          ), ),),
          SizedBox(height: 10.0,),
          Card(
            child: Container(
             height: 400.0,
           child: ListTile(
          title: Image.asset('assets/enough.jpeg',height: 250.0,),
          subtitle: Text('\nThey should stand up together and put a stop to this inhuman acts so that others dont go through what they went through by sharing their stories.We dont promise to restore what was once theirs(dignity) but we promise to be with them every step of their recovery.\n'),
          ),),),
           SizedBox(height: 10.0,),
          Card(
            child: Container(
             height: 400.0,
           child: ListTile(
          title:Image.asset('assets/fight.jpeg',height: 250.0,),
          subtitle: Text('\nThey should nolonger be known us the fragile creatures that can be picked on and totured they should stand up for what they believe in.\n'),
          ), ),),
           SizedBox(height: 10.0,),
          Card(
            child: Container(
             height: 400.0,
           child: ListTile(
          title:Image.asset('assets/hdfgdhg.png',height: 250.0,),
          subtitle:Text('\nThey should come out and let it known that they shall never be bullied, hurt, intimidated or even looked down upon for they are stronger than they think.\n'),
          ), ),),
           SizedBox(height: 10.0,),
           Card(
             child: Container(
             height: 400.0,
           child: ListTile(
          title:Image.asset('assets/hurt.jpeg',height: 250.0,),
          subtitle: Text('\nWe shall never see tears ever again rolling down the cheecks of our mothers, sisters or even friends , we will stand up with all those who were defiled and say no to sexual assault ,,,Never again.\n'),
          ), ),), SizedBox(height: 10.0,),
          Card(
            child: Container(
             height: 400.0,
           child: ListTile(
          title:Image.asset('assets/if.jpeg',height: 250.0,),
          subtitle:Text('\nWeLinda gives those who once had no voice the loudest and pitch perfect voice to say no to sexual assault and gender based violence , made possible by Mojo, Chris and Keronei.\n'),
          ), ),),
          
        ],
)
      ),
    );
  }
}