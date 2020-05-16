import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsAppHomeAllCalls extends StatelessWidget {
  WhatsAppHomeAllCalls(this.all_calls);

  final all_calls;

  Widget userStatus() {
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
                child: Icon(CupertinoIcons.circle_filled,
                    size: 14, color: Colors.green))));
  }

  Widget userIcon(image, status) {
    return Container(
      width: 55,
      height: 55,
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(27.5)),
      child: Stack(
        children: [
          Positioned(
              child: Container(
                  child: Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(27.5),
                          child: Image.asset(image))))),
          status ? userStatus() : Container(child: null)
        ],
      ),
    );
  }

  Widget call_list(user) {
    return GestureDetector(
        child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(5),
      // decoration: BoxDecoration(border: Border.all()),
      child: Row(
        children: [
          userIcon(user['image'], user['status']),
          Expanded(
              child: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(2),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(user['name'],
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 15)))),
              Container(
                  margin: EdgeInsets.all(2),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(user['time'],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 12, color: Color(0xFF898989))))),
            ],
          )),
          Expanded(
              child: Container(
            // padding: EdgeInsets.all(10),
            // decoration: BoxDecoration(border: Border.all()),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                margin: EdgeInsets.all(5.0),
                child: Icon(Icons.phone, color: Color(0xff35A897))),
              user['connection'] != 0
                  ? Icon(Icons.call_made, color: Color(0xff0AD35B))
                  : Icon(Icons.call_received,
                      color: Color(0xffDF5663))
            ]),
          ))
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: all_calls.length,
                itemBuilder: (BuildContext cntx, int index) {
                  return call_list(all_calls[index]);
                })));
  }
}
