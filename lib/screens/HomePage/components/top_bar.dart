import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsAppHomeTopBar extends StatelessWidget {
  WhatsAppHomeTopBar(this.title, {this.icon, this.iconAction});

  final String title;
  final Widget icon;
  final iconAction;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(fontSize: 18)),
            Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                    color: Color(0xFFE2E7EA),
                    borderRadius: BorderRadius.circular(50.0)),
                child: icon != null ? IconButton(
                    icon: icon,
                    onPressed: () {
                      iconAction != null ? Navigator.pushNamed(context, iconAction) : print('pressed');
                    }): Container())
          ],
        ));
  }
}
