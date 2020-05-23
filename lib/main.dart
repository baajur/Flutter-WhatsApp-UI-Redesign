import 'package:flutter/material.dart';
import 'package:whatsapp_redesign_ios/initializer.dart';
import 'package:provider/provider.dart';
import 'screens/HomePage/home_page.dart';
import 'screens/SettingsPage/settings_page.dart';
import 'screens/newChatSelectContacts/new_chat_select_contacts.dart';
import 'screens/newCallSelectContacts/new_call_select_contacts.dart';
import 'screens/newBroadcast/new_broadcast.dart';
import 'screens/chat/chat.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Whatsapp',
        initialRoute: '/',
        routes: {
          '/': (context) =>  ChangeNotifierProvider(create: (_) => Initializer(), child: HomePage()),
          '/settings': (context) => SettingsPage(),
          '/newChatSelectContact': (context) => ChangeNotifierProvider(create: (_) => Initializer(), child: NewChatSelectContact()),
          '/newCallSelectContact': (context) => ChangeNotifierProvider(create: (_) => Initializer(), child: NewCallSelectContact()),
          '/newBroadcast': (context) => ChangeNotifierProvider(create: (_) => Initializer(), child: NewBroadcast()),
          '/chat': (context) => ChangeNotifierProvider(create: (_) => Initializer(), child: Chat()),
        } );
  }
}
