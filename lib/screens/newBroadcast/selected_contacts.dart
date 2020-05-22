import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_redesign_ios/initializer.dart';

class NewBroadcastSelectedContacts extends StatefulWidget {
  _NewBroadcastSelectedContacts createState() => _NewBroadcastSelectedContacts();
}

class _NewBroadcastSelectedContacts extends State<NewBroadcastSelectedContacts> {
  
  Widget userAddIcon(initializer, index) {
    return Positioned(
        bottom: 0,
        right: 0,
        child: GestureDetector(
          onTap: () {
            initializer.toogleBroadcastSetUserSelected(index);
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0), color: Colors.white),
            width: 26,
            height: 26,
            child: Icon(Icons.cancel, color: Colors.grey, size: 26))));
  }

  Widget statusIcon(selected, image, index, initializer) {
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
          selected ? userAddIcon(initializer, index) : Container(child: null)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final initializer = Provider.of<Initializer>(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.only(left: 15.0),
      // decoration: BoxDecoration(border: Border.all()),
      height: 60.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: initializer.allContacts.length,
          itemBuilder: (BuildContext ctxt, int index) {
            if (initializer.allContacts[index]['selected']) {
              return statusIcon(initializer.allContacts[index]['selected'], initializer.allContacts[index]['image'], index, initializer);
            }
          }),
    );
  }
}
