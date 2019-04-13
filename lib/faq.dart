import 'package:flutter/material.dart';

class Faqs extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      ListTile(
        title: Text(
          'FAQs',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }
}
