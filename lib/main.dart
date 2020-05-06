import 'package:flutter/material.dart';
import 'screens/HomePage/home_page.dart';
import 'screens/SettingsPage/settings_page.dart';

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
          '/': (context) => HomePage(),
          '/settings': (context) => SettingsPage(),
        } );
  }
}
