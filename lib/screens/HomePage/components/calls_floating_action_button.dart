import 'package:flutter/material.dart';

class CallsFloatingActionButtons extends StatefulWidget {
  @override
  _CallsFloatingActionButtons createState() => _CallsFloatingActionButtons();
}

class _CallsFloatingActionButtons extends State<CallsFloatingActionButtons> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          print('Add Calls');
        },
        backgroundColor: Color(0xff075E55),
        child: Icon(Icons.add_call));
  }
}
