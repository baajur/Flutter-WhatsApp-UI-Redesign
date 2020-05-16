import 'package:flutter/material.dart';
import 'components/search_bar.dart';
import 'components/top_bar.dart';
import 'components/all_calls.dart';

final allCalls = [
  {
    'name': 'Shashikant Dwivedi',
    'image': 'assets/images/profile/profile1.webp',
    'time': 'Yesterday 10:00',
    'connection': 0,
    'status': true
  },
  {
    'name': 'Tony Stark',
    'image': 'assets/images/profile/profile2.webp',
    'time': 'Today 01:00',
    'connection': 1,
    'status': false
  },
  {
    'name': 'Lokesh Kashyap',
    'image': 'assets/images/profile/profile3.webp',
    'time': 'Yesterday 10:00',
    'connection': 0,
    'status': false
  },
  {
    'name': 'Rehan Khan',
    'image': 'assets/images/profile/profile4.webp',
    'time': 'Today 10:00',
    'connection': 1,
    'status': true
  },
];

class Calls extends StatefulWidget {
  @override
  _Calls createState() => _Calls();
}

class _Calls extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            child: Column(children: [
      WhatsAppHomeTopBar('WhatsApp',
          icon: Icon(Icons.settings, color: Color(0xFF075E55), size: 15.0),
          iconAction: '/settings'),
      WhatsAppHomeSearchBar(),
      WhatsAppHomeAllCalls(allCalls)
    ])));
  }
}
