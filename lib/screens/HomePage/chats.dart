import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_redesign_ios/initializer.dart';
import 'components/top_bar.dart';
import 'components/search_bar.dart';
import 'components/status_bar.dart';
import 'components/all_chats.dart';

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
    'name': 'Anjali Vaishnav',
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

class Chats extends StatefulWidget {
  @override
  _Chats createState() => _Chats();
}

class _Chats extends State<Chats> {
  @override
  Widget build(BuildContext context) {
     final initializer = Provider.of<Initializer>(context);
    return SafeArea(
        child: Container(
            color: Colors.white,
            child: Column(
              children: [
                initializer.searchBar? Container() : WhatsAppHomeTopBar(
                    'WhatsApp',
                    icon: Icon(Icons.settings, color: Color(0xFF075E55), size: 15.0),
                    iconAction: '/settings'),
                WhatsAppHomeSearchBar(),
                initializer.searchBar? Container() : WhatsAppHomeStatusBar(status),
                WhatsAppHomeAllChats(allChats)
              ],
            )));
  }
}
