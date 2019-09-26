import 'package:flutter/material.dart';

import 'dart:async';
import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import './model/word_receipt.dart';

final reference = FirebaseDatabase.instance.reference().child('messages');

const String _name = "Your Name";

@override
class ChatMessage extends StatefulWidget {
  ChatMessage(
      {this.snapshot,
      this.animation,
      this.userNameAsSent,
      @required this.list});

  final DataSnapshot snapshot;
  final Animation animation;
  final String userNameAsSent;
  final List<WordReceipt> list;

  @override
  State<StatefulWidget> createState() {
    return ChatMessageState();
  }
}

class ChatMessageState extends State<ChatMessage> {
  showDeleteWarning(BuildContext context, dynamic selectedKey) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.purple[100],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            title: Text(
              'Warning!',
              style: TextStyle(color: Colors.red),
            ),
            content: Text("Delete this message ?"),
            actions: <Widget>[
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'close',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  reference.child(selectedKey).remove();

                  Navigator.pop(context);
                },
                child: Text(
                  'Delete',
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
              ),
            ],
          );
        });
  }

  Widget build(BuildContext context) {
    bool isSenders =
        widget.snapshot.value['senderName'] == widget.userNameAsSent;

    return GestureDetector(
      onLongPress: () {
        print("pressed: " + widget.snapshot.key.toString());
        if (isSenders) {
          print("Proceedint to delete");
          showDeleteWarning(context, widget.snapshot.key);
        } else {
          print("You did not send that!");
        }
      },
      child: new SizeTransition(
        sizeFactor: new CurvedAnimation(
            parent: widget.animation, curve: Curves.easeOut),
        axisAlignment: 0.0,
        child: new Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: new Row(
            mainAxisAlignment:
                isSenders ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: <Widget>[
              !isSenders
                  ? new Container(
                      margin: const EdgeInsets.only(right: 16.0),
                      child: new CircleAvatar(
                        backgroundColor: Colors.purpleAccent,
                        child: Text(
                          widget.snapshot.value['senderName'][0],
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                    )
                  : Container(),
              new Expanded(
                child: new Column(
                  crossAxisAlignment: isSenders
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: <Widget>[
                    isSenders
                        ? Container()
                        : new Text(widget.snapshot.value['senderName'],
                            style: Theme.of(context).textTheme.subhead),
                    new Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        color: Colors.purple[200],
                      ),
                      margin: const EdgeInsets.only(top: 5.0),
                      child: //new
                          new Text(widget.snapshot.value['text']),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              !isSenders
                  ? Container()
                  : new Container(
                      margin: const EdgeInsets.only(right: 16.0),
                      child: new CircleAvatar(
                        backgroundColor: Colors.purpleAccent,
                        child: Text(
                          widget.snapshot.value['senderName'][0],
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatRoom extends StatefulWidget {
  final String currentUserName;

  ChatRoom({
    this.currentUserName,
  });

  @override
  State createState() => new ChatRoomState();
}

class ChatRoomState extends State<ChatRoom> {
  final TextEditingController _textController = new TextEditingController();
  bool _isComposing = false;
  List<WordReceipt> list;

  showWarning(String warningMessage, BuildContext context) {
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

  Future<bool> filterWording(String text) async {
    /*
    Returns false if all words are cool, true if there's stupidity.
     */

    bool isExistBad;

    List<String> result = text.split(" ");

    result.forEach((word) {
      isExistBad = list
                  .where((WordReceipt receipt) {
                    return receipt.name == word.toLowerCase();
                  })
                  .toList()
                  .length >
              0
          ? true
          : false;
    });
    return isExistBad;
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(children: <Widget>[
      new Flexible(
        child: new FirebaseAnimatedList(
          query: reference,
          sort: (a, b) => b.key.compareTo(a.key),
          padding: new EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, DataSnapshot snapshot, Animation<double> animation,
              int index) {
            return new ChatMessage(
              list: list,
              snapshot: snapshot,
              animation: animation,
              userNameAsSent: widget.currentUserName,
            );
          },
        ),
      ),
      new Divider(height: 1.0),
      new Container(
        decoration: new BoxDecoration(color: Theme.of(context).cardColor),
        child: _buildTextComposer(),
      ),
    ]));
  }

  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: new Row(children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textController,
                onChanged: (String text) {
                  setState(() {
                    _isComposing = text.length > 0;
                  });
                },
                onSubmitted: _handleSubmitted,
                decoration:
                    new InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: Theme.of(context).platform == TargetPlatform.iOS
                  ? new CupertinoButton(
                      child: new Text("Send"),
                      onPressed: _isComposing
                          ? () => _handleSubmitted(_textController.text)
                          : null,
                    )
                  : new RotationTransition(
                      turns: new AlwaysStoppedAnimation(320 / 360),
                      child: new IconButton(
                        icon: new Icon(
                          Icons.send,
                          color: Colors.purple,
                        ),
                        onPressed: _isComposing
                            ? () => _handleSubmitted(_textController.text)
                            : null,
                      ),
                    ),
            ),
          ]),
          decoration: Theme.of(context).platform == TargetPlatform.iOS
              ? new BoxDecoration(
                  border:
                      new Border(top: new BorderSide(color: Colors.grey[200])))
              : null),
    );
  }

  Future<Null> _handleSubmitted(String text) async {
    filterWording(text).then((isBad) {
      if (isBad == true) {
        showWarning("Decency! Some words are not allowed.", context);
      } else {
        _textController.clear();
        setState(() {
          _isComposing = false;
        });
        _sendMessage(text: text);
      }
    });
  }

  void _sendMessage({String text, String imageUrl}) {
    reference.push().set({
      'text': text,
      'imageUrl': imageUrl,
      'senderName': widget.currentUserName,
    });
  }
}
