import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class WhatsAppProfileTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Profile', style: TextStyle(fontSize: 18)),
            Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                    color: Color(0xFFE2E7EA),
                    borderRadius: BorderRadius.circular(50.0)),
                child: IconButton(
                    icon: Icon(LineAwesomeIcons.pencil,
                        color: Color(0xFF075E55), size: 15.0),
                    onPressed: () {
                      // Navigator.pushNamed(context, '/settings');
                    }))
          ],
        ));
  }
}
