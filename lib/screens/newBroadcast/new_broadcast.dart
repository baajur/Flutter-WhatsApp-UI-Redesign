import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_redesign_ios/initializer.dart';
import 'all_contacts.dart';
import 'selected_contacts.dart';


class NewBroadcast extends StatefulWidget {
  @override
  _NewBroadcast createState() => _NewBroadcast();
  
}

class _NewBroadcast extends State<NewBroadcast> {

  @override
  Widget build(BuildContext context) {
    final initializer = Provider.of<Initializer>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Text('Select Contacts', style: TextStyle(color: Colors.black87, fontSize: 18.0)),
          Text('${initializer.varSelectedContacts} of ${initializer.allContacts.length} Contacts', style: TextStyle(color: Color(0xff808080), fontSize: 14.0))
        ],),
        actions: <Widget>[
          IconButton(icon: Icon(LineAwesomeIcons.search), onPressed: null)
        ],
      ),
      body: SafeArea(child: Container(
        decoration: BoxDecoration(color: Colors.white10),
        child: Column(
          children: [
            initializer.selectedOptionAvailable ? NewBroadcastSelectedContacts() : Container(),
            NewBroadcastSelectContactAllContacts()
          ]
        ),
      ))
    );
  }
}