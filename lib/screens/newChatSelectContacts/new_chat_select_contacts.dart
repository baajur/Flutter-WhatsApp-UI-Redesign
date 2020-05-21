import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'search_bar.dart';
import 'all_contacts.dart';

final status = [
  {'user': true, 'image': 'assets/images/profile/profile1.webp'},
  {'user': false, 'image': 'assets/images/profile/profile2.webp'},
  {'user': false, 'image': 'assets/images/profile/profile3.webp'},
  {'user': false, 'image': 'assets/images/profile/profile4.webp'},
  {'user': false, 'image': 'assets/images/profile/profile5.webp'},
  {'user': false, 'image': 'assets/images/profile/profile6.webp'},
  {'user': false, 'image': 'assets/images/profile/profile7.webp'},
  {'user': false, 'image': 'assets/images/profile/profile8.webp'},
  {'user': true, 'image': 'assets/images/profile/profile1.webp'},
  {'user': false, 'image': 'assets/images/profile/profile2.webp'},
  {'user': false, 'image': 'assets/images/profile/profile3.webp'},
  {'user': false, 'image': 'assets/images/profile/profile4.webp'},
  {'user': false, 'image': 'assets/images/profile/profile5.webp'},
  {'user': false, 'image': 'assets/images/profile/profile6.webp'},
  {'user': false, 'image': 'assets/images/profile/profile7.webp'},
  {'user': false, 'image': 'assets/images/profile/profile8.webp'},
  {'user': true, 'image': 'assets/images/profile/profile1.webp'},
  {'user': false, 'image': 'assets/images/profile/profile2.webp'},
  {'user': false, 'image': 'assets/images/profile/profile3.webp'},
  {'user': false, 'image': 'assets/images/profile/profile4.webp'},
  {'user': false, 'image': 'assets/images/profile/profile5.webp'},
  {'user': false, 'image': 'assets/images/profile/profile6.webp'},
  {'user': false, 'image': 'assets/images/profile/profile7.webp'},
  {'user': false, 'image': 'assets/images/profile/profile8.webp'},
];

final allContacts = [
  {
    'name': 'Shashikant Dwivedi',
    'image': 'assets/images/profile/profile1.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': true
  },
  {
    'name': 'Tony Stark',
    'image': 'assets/images/profile/profile2.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': false
  },
  {
    'name': 'Lokesh Kashyap',
    'image': 'assets/images/profile/profile3.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': false
  },
  {
    'name': 'Rehan Khan',
    'image': 'assets/images/profile/profile4.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': true
  },
  {
    'name': 'Vishal Tiwari',
    'image': 'assets/images/profile/profile5.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': true
  },
  {
    'name': 'Anjali Vaishnav',
    'image': 'assets/images/profile/profile6.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': true
  },
  {
    'name': 'Lavish Pratap',
    'image': 'assets/images/profile/profile7.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': false
  },
  {
    'name': 'Arvind Sharma',
    'image': 'assets/images/profile/profile8.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': false
  },
  {
    'name': 'Shashikant Dwivedi',
    'image': 'assets/images/profile/profile1.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': true
  },
  {
    'name': 'Tony Stark',
    'image': 'assets/images/profile/profile2.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': false
  },
  {
    'name': 'Lokesh Kashyap',
    'image': 'assets/images/profile/profile3.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': false
  },
  {
    'name': 'Rehan Khan',
    'image': 'assets/images/profile/profile4.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': true
  },
  {
    'name': 'Vishal Tiwari',
    'image': 'assets/images/profile/profile5.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': true
  },
  {
    'name': 'Anjali Vaishnav',
    'image': 'assets/images/profile/profile6.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': true
  },
  {
    'name': 'Lavish Pratap',
    'image': 'assets/images/profile/profile7.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': false
  },
  {
    'name': 'Arvind Sharma',
    'image': 'assets/images/profile/profile8.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': false
  },
  {
    'name': 'Shashikant Dwivedi',
    'image': 'assets/images/profile/profile1.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': true
  },
  {
    'name': 'Tony Stark',
    'image': 'assets/images/profile/profile2.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': false
  },
  {
    'name': 'Lokesh Kashyap',
    'image': 'assets/images/profile/profile3.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': false
  },
  {
    'name': 'Rehan Khan',
    'image': 'assets/images/profile/profile4.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': true
  },
  {
    'name': 'Vishal Tiwari',
    'image': 'assets/images/profile/profile5.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': true
  },
  {
    'name': 'Anjali Vaishnav',
    'image': 'assets/images/profile/profile6.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': true
  },
  {
    'name': 'Lavish Pratap',
    'image': 'assets/images/profile/profile7.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': false
  },
  {
    'name': 'Arvind Sharma',
    'image': 'assets/images/profile/profile8.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'status': false
  },
];


class NewChatSelectContact extends StatefulWidget {
  @override
  _NewChatSelectContact createState() => _NewChatSelectContact();
  
}

class _NewChatSelectContact extends State<NewChatSelectContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Select Contacts', style: TextStyle(color: Colors.black87)),
        actions: <Widget>[
          IconButton(icon: Icon(LineAwesomeIcons.ellipsis_v), onPressed: null)
        ],
      ),
      body: SafeArea(child: Container(
        decoration: BoxDecoration(color: Colors.white10),
        child: Column(
          children: [
            NewChatSelectContactsSearchBar(),
            NewChatSelectContactAllContacts(allContacts, status)
          ]
        ),
      ))
    );
  }
}