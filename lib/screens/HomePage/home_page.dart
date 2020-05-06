import 'package:flutter/material.dart';
// Imports
import 'top_bar.dart';
import 'search_bar.dart';
import 'status_bar.dart';
import 'all_chats.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

final status = [
  {'user': true, 'image': 'assets/images/profile/profile1.webp'},
  {'user': false, 'image': 'assets/images/profile/profile2.webp'},
  {'user': false, 'image': 'assets/images/profile/profile3.webp'},
  {'user': false, 'image': 'assets/images/profile/profile4.webp'},
  {'user': false, 'image': 'assets/images/profile/profile5.webp'},
  {'user': false, 'image': 'assets/images/profile/profile6.webp'},
  {'user': false, 'image': 'assets/images/profile/profile7.webp'},
  {'user': false, 'image': 'assets/images/profile/profile8.webp'},
];

final allChats = [
  {
    'name': 'Shashikant Dwivedi',
    'image': 'assets/images/profile/profile1.webp',
    'recentMessage': 'How are you ?',
    'time': '10:00',
    'unreadMessages': 1,
    'status': true
  },
  {
    'name': 'Tony Stark',
    'image': 'assets/images/profile/profile2.webp',
    'recentMessage': 'How are you ?',
    'time': '01:00',
    'unreadMessages': 10,
    'status': false
  },
  {
    'name': 'Lokesh Kashyap',
    'image': 'assets/images/profile/profile3.webp',
    'recentMessage': 'How are you ?',
    'time': '10:00',
    'unreadMessages': 4,
    'status': false
  },
  {
    'name': 'Rehan Khan',
    'image': 'assets/images/profile/profile4.webp',
    'recentMessage': 'How are you ?',
    'time': '10:00',
    'unreadMessages': 0,
    'status': true
  },
  {
    'name': 'Vishal Tiwari',
    'image': 'assets/images/profile/profile5.webp',
    'recentMessage': 'How are you ?',
    'time': '10:00',
    'unreadMessages': 10,
    'status': true
  },
  {
    'name': 'Rohit Goyal',
    'image': 'assets/images/profile/profile6.webp',
    'recentMessage': 'How are you ?',
    'time': '07:00',
    'unreadMessages': 0,
    'status': true
  },
  {
    'name': 'Lavish Pratap',
    'image': 'assets/images/profile/profile7.webp',
    'recentMessage': 'How are you ?',
    'time': '10:00',
    'unreadMessages': 1,
    'status': false
  },
  {
    'name': 'Arvind Sharma',
    'image': 'assets/images/profile/profile8.webp',
    'recentMessage': 'How are you ?',
    'time': 'Yesterday',
    'unreadMessages': 0,
    'status': false
  },
];

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.person_add),
            backgroundColor: Color(0xFF075E55)),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color(0xFF075E55),
            unselectedItemColor: Color(0xFFA7B1B7),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), title: Text('')),
              BottomNavigationBarItem(icon: Icon(Icons.phone), title: Text('')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text('')),
            ]),
        body: SafeArea(
            child: Container(
                // padding: EdgeInsets.all(25.0),
                // decoration: BoxDecoration(color: Color(0xFFE5E5E5),),
                color: Colors.white,
                child: Column(
                  children: [
                    WhatsAppHomeTopBar(),
                    WhatsAppHomeSearchBar(),
                    WhatsAppHomeStatusBar(status),
                    Expanded(child: WhatsAppHomeAllChats(allChats))
                  ],
                ))));
  }
}
