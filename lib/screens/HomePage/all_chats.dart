import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsAppHomeAllChats extends StatelessWidget {
  WhatsAppHomeAllChats(this.all_chats);

  final all_chats;

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
                  // decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(25.0)),
                  // width: 60,
                  // height: 60,
                  child: Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(27.5),
                          child: Image.asset(image))))),
          status ? userStatus() : Container(child: null)
        ],
      ),
    );
  }

  Widget unreadMessagesCircle(unread_messages) {
    return Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.green),
              child: Text(unread_messages.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      
                      fontSize: 10,
                      color: Colors.white)),
            );
  }

  Widget chat_list(user) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      // padding: EdgeInsets.all(5),
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
                          style: TextStyle(
                              fontSize: 15)))),
              Container(
                  margin: EdgeInsets.all(2),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(user['recentMessage'],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              
                              fontSize: 12,
                              color: Color(0xFF898989))))),
            ],
          )),
          Column(children: [
            Container(
                margin: EdgeInsets.all(2),
                padding: EdgeInsets.all(3),
                child: Text(user['time'],
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        
                        fontSize: 15,
                        color: Color(0xFF898989)))),
            user['unreadMessages'] !=0 ? unreadMessagesCircle(user['unreadMessages']) : Container()
          ])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: all_chats.length,
            itemBuilder: (BuildContext cntx, int index) {
              return chat_list(all_chats[index]);
            }));
  }
}
