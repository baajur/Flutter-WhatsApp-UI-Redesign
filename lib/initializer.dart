import 'package:flutter/material.dart';

class Initializer with ChangeNotifier {
  int homePageIndex = 0;
  bool topBar = true;
  bool statusBar = true;
  bool searchBar = false;
  


var allContacts = [
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

var selectedContacts = [
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

var varSelectedContacts = 0;
var selectedOptionAvailable = false;

void allSelectedContacts() {
  var count = 0;
    selectedContacts.forEach((element) {
      if (element['selected']) {
        count++;
      }
    });
    varSelectedContacts = count;
    if (count > 0) {
      selectedOptionAvailable = true;
    } else {
      selectedOptionAvailable = false;
    }
}


  void setHomePageIndex(index) {
    homePageIndex = index;
    notifyListeners();
  }

  void toggleBroadcastContact(index) {
    if (allContacts[index]['selected']) {
      allContacts[index]['selected'] = false;
      selectedContacts[index]['selected'] = false;
    } else {
      allContacts[index]['selected'] = true;
      selectedContacts[index]['selected'] = true;
    }
    allSelectedContacts();
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