import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import './more_pages/chatspace/bot.dart';
import './more_pages/chatspace/chatroom.dart';

class Ongea extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OngeaState();
  }
}

final Color _widgetIconColorsSelected = Colors.purple;
final Color _widgetIconColorsNormal = Colors.grey;
int _selectedIndex = 0;
String currentUserName = '';
bool isLoggedIn = false;
TextEditingController userName = new TextEditingController();
List<WordReceipt> list;

class WordReceipt {
  final String name;

  WordReceipt({this.name});
}

class OngeaState extends State<Ongea> {
  void _onSelectedOption(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<dynamic> getUserName() async {
    /*
    Used to check user name and return, otherwise return null meaning
    user has not logged in.
     */
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('username');
  }

  Future<dynamic> setUserName(String chosenName) async {
    /*
    set username when user first sets it
     */
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('username', chosenName);
  }

  loadNames() async {
    String jolo = await rootBundle
        .loadString('assets/full-list-of-bad-words_text-file_2018_07_30.txt');
    list =
        LineSplitter().convert(jolo).map((s) => WordReceipt(name: s)).toList();
  }

  @override
  void initState() {
    loadNames();

    getUserName().then((returnedName) {
      if (returnedName.toString().isEmpty || returnedName == null) {
        //do nothing
      } else {
        currentUserName = returnedName.toString();
      }
      currentUserName = returnedName.toString();
      setState(() {
        isLoggedIn =
            returnedName.toString().isNotEmpty || !returnedName == null;
      });
    });

    super.initState();
  }

  Future<bool> filterWording(String text) async {
    /*
    Returns false if all words are cool, true if there's stupidity.
     */

    return list
                .where((WordReceipt receipt) {
                  return receipt.name == text.toLowerCase();
                })
                .toList()
                .length >
            0
        ? true
        : false;
  }

  showWarning(String warningMessage) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.purple[100],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            title: Text('Warning!'),
            content: Text(warningMessage),
            actions: <Widget>[
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'close',
                  style: TextStyle(color: Colors.purple, fontSize: 15),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: isLoggedIn
          ? [
              ChatRoom(
                currentUserName: currentUserName,
              ),
              BotAgent(),
            ].elementAt(_selectedIndex)
          : Center(
              child: SingleChildScrollView(
                child: username(context),
              ),
            ),
      bottomNavigationBar: isLoggedIn
          ? BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.forum,
                        color: _selectedIndex == 0
                            ? _widgetIconColorsSelected
                            : _widgetIconColorsNormal),
                    title: new Text('Forum',
                        style: TextStyle(color: Colors.purple))),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message,
                        color: _selectedIndex == 1
                            ? _widgetIconColorsSelected
                            : _widgetIconColorsNormal),
                    title: new Text(
                      'Helper',
                      style: TextStyle(color: Colors.purple),
                    )),
              ],
              currentIndex: _selectedIndex,
              //fixedColor: Colors.deepOrange,
              onTap: _onSelectedOption,
            )
          : Icon(Icons.add),
    );
  }

  Widget username(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 25.0,
        ),
        Text(
          'Provide a username',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 10.0,
        ),
        TextFormField(
          controller: userName,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'username',
            hintText: 'Unique name',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
          ),
          onSaved: (String name) {},
          validator: (String name) {
            if (name.length < 4) {
              return "Minimum length is 4";
            }
          },
        ),
        FlatButton.icon(
            onPressed: () {
              if (userName.text.length < 4) {
                showWarning("Your user name should be 4+ characters");
                return;
              }

              filterWording(userName.text).then((bool isBad) {
                if (isBad) {
                  showWarning("Decency! Some words not allowed.");
                } else {
                  setUserName(userName.text);
                  setState(() {
                    isLoggedIn = true;
                  });
                }
              });
            },
            icon: Icon(Icons.check),
            label: Text('Proceed'))
      ]),
    );
  }
}
