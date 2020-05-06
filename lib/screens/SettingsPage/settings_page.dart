import 'package:flutter/material.dart';
import 'all_settings.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPage createState() => _SettingsPage();
  
}

class _SettingsPage extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Settings', style: TextStyle(color: Colors.black87))
      ),
      body: SafeArea(child: Container(
        decoration: BoxDecoration(color: Colors.white10),
        child: AllSettings()
      ))
    );
  }
}