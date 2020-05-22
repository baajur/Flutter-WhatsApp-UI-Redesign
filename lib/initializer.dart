import 'package:flutter/material.dart';

class Initializer with ChangeNotifier {
  int homePageIndex = 0;
  bool topBar = true;
  bool statusBar = true;
  bool searchBar = false;

  final selected = [
  {'user': true, 'image': 'assets/images/profile/profile1.webp'},
  {'user': false, 'image': 'assets/images/profile/profile2.webp'},
  {'user': false, 'image': 'assets/images/profile/profile3.webp'},
  {'user': false, 'image': 'assets/images/profile/profile4.webp'},
  {'user': false, 'image': 'assets/images/profile/profile5.webp'},
  {'user': false, 'image': 'assets/images/profile/profile6.webp'},
  {'user': false, 'image': 'assets/images/profile/profile7.webp'},
  {'user': false, 'image': 'assets/images/profile/profile8.webp'},
  {'user': false, 'image': 'assets/images/profile/profile1.webp'},
  {'user': false, 'image': 'assets/images/profile/profile2.webp'},
  {'user': false, 'image': 'assets/images/profile/profile3.webp'},
  {'user': false, 'image': 'assets/images/profile/profile4.webp'},
  {'user': false, 'image': 'assets/images/profile/profile5.webp'},
  {'user': false, 'image': 'assets/images/profile/profile6.webp'},
  {'user': false, 'image': 'assets/images/profile/profile7.webp'},
  {'user': false, 'image': 'assets/images/profile/profile8.webp'},
  {'user': false, 'image': 'assets/images/profile/profile1.webp'},
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
    'selected': false
  },
  {
    'name': 'Tony Stark',
    'image': 'assets/images/profile/profile2.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Lokesh Kashyap',
    'image': 'assets/images/profile/profile3.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Rehan Khan',
    'image': 'assets/images/profile/profile4.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Vishal Tiwari',
    'image': 'assets/images/profile/profile5.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Anjali Vaishnav',
    'image': 'assets/images/profile/profile6.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Lavish Pratap',
    'image': 'assets/images/profile/profile7.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Arvind Sharma',
    'image': 'assets/images/profile/profile8.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Shashikant Dwivedi',
    'image': 'assets/images/profile/profile1.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Tony Stark',
    'image': 'assets/images/profile/profile2.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Lokesh Kashyap',
    'image': 'assets/images/profile/profile3.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Rehan Khan',
    'image': 'assets/images/profile/profile4.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Vishal Tiwari',
    'image': 'assets/images/profile/profile5.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Anjali Vaishnav',
    'image': 'assets/images/profile/profile6.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Lavish Pratap',
    'image': 'assets/images/profile/profile7.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Arvind Sharma',
    'image': 'assets/images/profile/profile8.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Shashikant Dwivedi',
    'image': 'assets/images/profile/profile1.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Tony Stark',
    'image': 'assets/images/profile/profile2.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Lokesh Kashyap',
    'image': 'assets/images/profile/profile3.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Rehan Khan',
    'image': 'assets/images/profile/profile4.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Vishal Tiwari',
    'image': 'assets/images/profile/profile5.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Anjali Vaishnav',
    'image': 'assets/images/profile/profile6.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Lavish Pratap',
    'image': 'assets/images/profile/profile7.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
  {
    'name': 'Arvind Sharma',
    'image': 'assets/images/profile/profile8.webp',
    'subTitle': 'Hey there! I am using WhatsApp',
    'selected': false
  },
];

  void setHomePageIndex(index) {
    homePageIndex = index;
    notifyListeners();
  }

  void toogleBroadcastSetUserSelected(index) {
    allContacts[index]['selected'] = !allContacts[index]['selected'];
    notifyListeners();
  }

  void toogleSearchBar() {
    searchBar = !searchBar;
    if (!searchBar) {
      toogleTopBar();
      toogleStatusBar();
    }
    notifyListeners();
  }

  void toogleTopBar() {
    topBar = !topBar;
    notifyListeners();
  }

  void toogleStatusBar() {
    statusBar = !statusBar;
    notifyListeners();
  }
}