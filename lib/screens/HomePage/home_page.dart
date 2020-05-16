import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:whatsapp_redesign_ios/initializer.dart';
import 'components/floating_action_buttons.dart';
import 'chats.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final initializer = Provider.of<Initializer>(context);
    return Scaffold(
        floatingActionButton: initializer.homePageIndex == 0
            ? FloatingActionButtons()
            : (initializer.homePageIndex == 1 ? Container() : Container()),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: initializer.homePageIndex,
            onTap: (index) {
              initializer.setHomePageIndex(index);
            },
            selectedItemColor: Color(0xFF075E55),
            unselectedItemColor: Color(0xFFA7B1B7),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), title: Text('')),
              BottomNavigationBarItem(icon: Icon(Icons.phone), title: Text('')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text('')),
            ]),
        body: initializer.homePageIndex == 0
            ? Chats()
            : (initializer.homePageIndex == 1 ? Chats() : Profile()));
  }
}
