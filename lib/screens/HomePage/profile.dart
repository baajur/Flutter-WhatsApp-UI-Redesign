import 'package:flutter/material.dart';
import 'components/top_bar.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            color: Colors.white,
            child: Column(
              children: [
                // Top Bar
                WhatsAppHomeTopBar('Profile',
                    icon: Icon(LineAwesomeIcons.pencil,
                        color: Color(0xFF075E55), size: 15.0)),
                // User DP
                Container(
                    // decoration: BoxDecoration(border: Border.all()),
                    height: 150.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15.0),
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              ),
                          child: Stack(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        // decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(25.0)),
                                        width: 100,
                                        height: 100,
                                        child: Center(
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                                child: Image.asset(
                                                    'assets/images/profile/profile5.webp'))))
                                  ]),
                              Positioned(
                                  bottom: 10,
                                  right: 0,
                                  width: 50,
                                  height: 50,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          // border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          color: Colors.white),
                                      child: IconButton(
                                          color: Colors.green,
                                          onPressed: null,
                                          icon: Icon(Icons.camera_alt,
                                              size: 22,
                                              color: Color(0xff35A897)))))
                            ],
                          ),
                        )
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(15.0),
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    // decoration: BoxDecoration(border: Border.all()),
                    child: Column(children: [
                      Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: Icon(Icons.person, size: 30, color: Color(0xff35A897))),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Name',
                                  style: TextStyle(color: Color(0xff808080))),
                              Text('Shashikant Dwivedi',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18)),
                            ],
                          )
                        ],
                      )
                    ])),
                Container(
                    padding: EdgeInsets.all(15.0),
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    // decoration: BoxDecoration(border: Border.all()),
                    child: Column(children: [
                      Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: Icon(Icons.info, size: 30, color: Color(0xff35A897))),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('About',
                                  style: TextStyle(color: Color(0xff808080))),
                              Text('Hey there! i am using WhatsApp.',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18)),
                            ],
                          )
                        ],
                      )
                    ])),
                Container(
                    padding: EdgeInsets.all(15.0),
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    // decoration: BoxDecoration(border: Border.all()),
                    child: Column(children: [
                      Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: Icon(Icons.phone, size: 30, color: Color(0xff35A897))),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Phone',
                                  style: TextStyle(color: Color(0xff808080))),
                              Text('+62 857-1234-5678',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18)),
                            ],
                          )
                        ],
                      )
                    ]))
              ],
            )));
  }
}
