import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class UserChats extends StatefulWidget {

  @override
  _UserChatsState createState() => _UserChatsState();
}

class _UserChatsState extends State<UserChats> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        // border: Border.all(),
      ),
      child: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(bottom: 50.0, top: 15.0),
              decoration: BoxDecoration(
                  // border: Border.all(),
                  ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xff60AED1)),
                  child: Text(
                    '23 May 2020',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ])),
          Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                // border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffDCF8C6)),
                      child: Text(
                        'I need some help',
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffDCF8C6)),
                      child: Text(
                        'On the code that I have discussed earlier',
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.all(5.0),
                              child: Text(
                                '9:10',
                                style: TextStyle(
                                    fontSize: 13.0, color: Color(0xffA7B1B7)),
                              )),
                          Container(
                              margin: EdgeInsets.all(5.0),
                              child: Icon(
                                LineAwesomeIcons.check,
                                size: 13.0,
                                color: Colors.blue,
                              ))
                        ],
                      ),
                    )
                  ])
                ],
              )),
              
              Container(
                padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                // border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffE2E7EA)),
                      child: Text(
                        'Is there any error ?',
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffE2E7EA)),
                      child: Text(
                        'Or the same problem has occurred again',
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.all(5.0),
                              child: Text(
                                '9:15',
                                style: TextStyle(
                                    fontSize: 13.0, color: Color(0xffA7B1B7)),
                              )),
                        ],
                      ),
                    )
                  ])
                ],
              )),

              Container(
                padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                // border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffDCF8C6)),
                      child: Text(
                        'Actually there is new problem',
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffDCF8C6)),
                      child: Text(
                        'It show unable to access the file.\nUnedquate permission to the file',
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.all(5.0),
                              child: Text(
                                '9:17',
                                style: TextStyle(
                                    fontSize: 13.0, color: Color(0xffA7B1B7)),
                              )),
                          Container(
                              margin: EdgeInsets.all(5.0),
                              child: Icon(
                                LineAwesomeIcons.check,
                                size: 13.0,
                                color: Colors.blue,
                              ))
                        ],
                      ),
                    )
                  ])
                ],
              )),

              Container(
                padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                // border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffE2E7EA)),
                      child: Text(
                        'Oh, that\'\s a easy one',
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffE2E7EA)),
                      child: Text(
                        'Just give the permission to the file\nusing command chmod 777 filename',
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.all(5.0),
                              child: Text(
                                '9:20',
                                style: TextStyle(
                                    fontSize: 13.0, color: Color(0xffA7B1B7)),
                              )),
                        ],
                      ),
                    )
                  ])
                ],
              )),

              Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                // border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffDCF8C6)),
                      child: Text(
                        'Oh, thats work',
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffDCF8C6)),
                      child: Text(
                        'Thanks bro 👍👍🙏🙏🙏',
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.all(5.0),
                              child: Text(
                                '9:10',
                                style: TextStyle(
                                    fontSize: 13.0, color: Color(0xffA7B1B7)),
                              )),
                          Container(
                              margin: EdgeInsets.all(5.0),
                              child: Icon(
                                LineAwesomeIcons.check,
                                size: 13.0,
                                color: Colors.blue,
                              ))
                        ],
                      ),
                    )
                  ])
                ],
              )),
        ],
      ),
    );
  }
}
