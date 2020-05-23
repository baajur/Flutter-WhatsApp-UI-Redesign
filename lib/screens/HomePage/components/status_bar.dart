import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsAppHomeStatusBar extends StatelessWidget {
  WhatsAppHomeStatusBar(this.status);

  final status;

  Widget userAddIcon() {
    return Positioned(
        bottom: 0,
        right: 0,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0), color: Colors.green),
            width: 16,
            height: 16,
            child: Icon(Icons.add, color: Colors.white, size: 13)));
  }

  Widget statusIcon(user, image) {
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
      child: Stack(
        children: [
          Positioned(
              child: Container(
                  // decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(25.0)),
                  width: 60,
                  height: 60,
                  child: Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset(image))))),
          user ? userAddIcon() : Container(child: null)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.only(left: 15.0),
      // decoration: BoxDecoration(border: Border.all()),
      height: 60.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: status.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return statusIcon(status[index]['user'], status[index]['image']);
          }),
    );
  }
}
