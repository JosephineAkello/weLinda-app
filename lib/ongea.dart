import 'package:flutter/material.dart';


class Ongea extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
         child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 50.0),
        child: Form(
          child: username(),
        ),
      ),
     ));
  }

  Widget username() {
    return Column(
     
      children: [
      Text(
        'Provide a username',
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
      ),
      SizedBox(
        height: 10.0,
      ),
      TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'username',
          hintText: 'Unique name',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
        onSaved: (String name) {
          name = name;
        },
      ),
      FlatButton.icon(
          onPressed: () {}, icon: Icon(Icons.check), label: Text('Proceed'))
    ]);
  }
}
