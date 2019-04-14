import 'package:flutter/material.dart';
import './long.dart';

class MoreInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Detail'),),
      body: Container( padding: EdgeInsets.all(16.0),child: SingleChildScrollView(
        child: Text(more_info, style: TextStyle(fontSize: 18.0),),
      ),)
    );
  }

}