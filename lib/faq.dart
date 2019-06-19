import 'package:flutter/material.dart';

class Faqs extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Frequently Asked Questions'),
        ),
        body: ListView(children: <Widget>[
          ListTile(
            title: Text(
              '1. What is sexual assault?',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.purple),
            ),
            subtitle: Text(
                'Sexual assault is any type of sexual activity or contact, including rape, that happens without your consent.\n'
                'Sexual assault is also called sexual violence or abuse. Legal definitions of sexual assault and other crimes of sexual violence can vary slightly from state to state.'),
          ),
          ListTile(
            title: Text(
              '2. What does sexual assault include?',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.purple),
            ),
            subtitle: Text(
                'Sexual assault can also be verbal, visual, or non-contact.'),
          ),
          ListTile(
            title: Text(
              '3. Can I be sexually assaulted by my partner or spouse? ',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.purple),
            ),
            subtitle: Text(
                'Yes. Sexual assault is any sexual activity you do not consent to — no matter whom it is with.'),
          ),
          ListTile(
            title: Text(
              '4. What do I do if I’ve been sexually assaulted',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.purple),
            ),
            subtitle: Text(
                'If you are in danger or need medical care, call 911. If you can, get away from the person who assaulted you and get to a safe place as fast as you can. You can call the National Sexual Assault Hotline at 800-656-HOPE (4673) to connect with a sexual assault service provider in your area who can direct you to local resources.'),
          ),
          ListTile(
            title: Text(
              '5. What do I do if I’ve been raped?',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.purple),
            ),
            subtitle: Text(
                'It may be frightening to think about talking about the assault, but it is important to get help. You can call these organizations any time, day or night. The calls are free and confidential.'),
          ),
          ListTile(
            title: Text(
              '6. What steps can I take to be safer in social situations?',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.purple),
            ),
            subtitle: Text(
                'If you are assaulted, or if you find yourself in a situation that feels unsafe, it is not your fault. Sexual assault is never the victim’s fault, no matter what she was wearing, drinking, or doing at the time of the assault.'),
          ),
          ListTile(
            title: Text(
              '7. What steps can I take to be safer in social situations?',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.purple),
            ),
            subtitle: Text(
                'You can help a friend or family member who was sexually assaulted by listening and offering comfort. Remind this person you believe them. Reinforce the message that she or he is not at fault. A victim never causes sexual assault or “asks for it.” You can also explain that it is natural to experience confusion, have problems remembering what happened, or feel angry, numb, or ashamed.'),
          ),
          ListTile(
            title: Text(
              '8. What is NOT considered consent in sexual activity?',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.purple),
            ),
            subtitle: Text(
                'Sexual assault is most often committed by someone the victim knows.1 This may be a friend, an acquaintance, an ex, a relative, a date, or a partner. Less often, a stranger commits sexual assault.'),
          ),
          ListTile(
            title: Text(
              '9. Did we answer your question about sexual assault?',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.purple),
            ),
            subtitle: Text(
                'For more information about sexual assault, call the OWH Helpline at 1-800-994-9662 or check out the following resources from other organizations:'),
          )
        ]));
  }
}
