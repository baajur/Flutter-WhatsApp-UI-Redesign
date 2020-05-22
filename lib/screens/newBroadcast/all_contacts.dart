import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_redesign_ios/initializer.dart';

class NewBroadcastSelectContactAllContacts extends StatefulWidget {
  _NewBroadcastSelectContactAllContacts createState() => _NewBroadcastSelectContactAllContacts();
}

class _NewBroadcastSelectContactAllContacts extends State<NewBroadcastSelectContactAllContacts> {
  
  int initalized = 1;

  

  Widget userselected() {
    return Positioned(
        bottom: 0,
        right: 0,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.0), color: Colors.white),
            width: 18,
            height: 18,
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                child: Icon(Icons.check_circle,
                    size: 14, color: Colors.green))));
  }

  Widget userIcon(image, selected) {
    return Container(
      width: 55,
      height: 55,
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(27.5)),
      child: Stack(
        children: [
          Positioned(
              child: Container(
                  // decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(25.0)),
                  // width: 60,
                  // height: 60,
                  child: Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(27.5),
                          child: Image.asset(image))))),
          selected ? userselected() : Container(child: null)
        ],
      ),
    );
  }


  Widget contact_list(initializer, index) {
    return GestureDetector(
        onTap: () {
          initializer.toogleBroadcastSetUserSelected(index);
        },
        child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      // padding: EdgeInsets.all(5),
      // decoration: BoxDecoration(border: Border.all()),
      child: Row(
        children: [
          userIcon(initializer.allContacts[index]['image'], initializer.allContacts[index]['selected']),
          Expanded(
              child: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(2),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(initializer.allContacts[index]['name'],
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 15)))),
              Container(
                  margin: EdgeInsets.all(2),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(initializer.allContacts[index]['subTitle'],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 12, color: Color(0xFF898989))))),
            ],
          )),
        ],
      ),
    ));
  }

  Widget defaultOptions(Widget icon, String value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      // padding: EdgeInsets.all(5),
      // decoration: BoxDecoration(border: Border.all()),
      child: Row(
        children: [
          Container(
            width: 55,
            height: 55,
            margin: EdgeInsets.only(right: 10.0),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(27.5), color: Color(0xff00CA53)),
            child: Stack(
              children: [
                Positioned(
                    child: Container(
                        // decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(25.0)),
                        // width: 60,
                        // height: 60,
                        child: Center(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(27.5),
                                child: icon))),
                )],
            ),
          ),
          Expanded(
              child: Container(
                  margin: EdgeInsets.all(2),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(value,
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 15))))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final initializer = Provider.of<Initializer>(context);
    return Expanded(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: initializer.allContacts.length,
                itemBuilder: (BuildContext cntx, int index) {
                  // if (initalized == 1) {
                  //   initalized = 2;
                  //   return defaultOptions(Icon(Icons.person_add), 'New Contact');
                  // }
                  // if (initalized == 2) {
                  //   initalized = 3;
                  //   return defaultOptions(Icon(Icons.group_add), 'New Group');
                  // }
                  return contact_list(initializer, index);
                  // return Text('Hello World');
                })));
  }
}
