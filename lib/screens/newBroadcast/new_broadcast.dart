import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'all_contacts.dart';
import 'selected_contacts.dart';


class NewBroadcast extends StatefulWidget {
  @override
  _NewBroadcast createState() => _NewBroadcast();
  
}

class _NewBroadcast extends State<NewBroadcast> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('New Broadcast', style: TextStyle(color: Colors.black87)),
        actions: <Widget>[
          IconButton(icon: Icon(LineAwesomeIcons.search), onPressed: null)
        ],
      ),
      body: SafeArea(child: Container(
        decoration: BoxDecoration(color: Colors.white10),
        child: Column(
          children: [
            NewBroadcastSelectedContacts(),
            NewBroadcastSelectContactAllContacts()
          ]
        ),
      ))
    );
  }
}