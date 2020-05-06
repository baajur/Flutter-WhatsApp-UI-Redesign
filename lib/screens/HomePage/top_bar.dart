import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsAppHomeTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('WhatsApp',
                style: TextStyle(fontSize: 18)),
            Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                    color: Color(0xFFE2E7EA),
                    borderRadius: BorderRadius.circular(50.0)),
                child:
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/settings');
                      },
                      child: Icon(Icons.settings, color: Color(0xFF075E55), size: 20.0)
                    ))
          ],
        ));
  }
}
