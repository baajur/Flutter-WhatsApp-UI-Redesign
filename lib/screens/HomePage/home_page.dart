import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_redesign_ios/initializer.dart';
import 'calls.dart';
import 'components/chats_floating_action_buttons.dart';
import 'components/calls_floating_action_button.dart';
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
            ? ChatsFloatingActionButtons()
            : (initializer.homePageIndex == 1
                ? CallsFloatingActionButtons()
                : Container()),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: initializer.homePageIndex,
            onTap: (index) {
              if (initializer.searchBar) {
                initializer.toogleSearchBar();
              }
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
            : (initializer.homePageIndex == 1 ? Calls() : Profile()));
  }
}
