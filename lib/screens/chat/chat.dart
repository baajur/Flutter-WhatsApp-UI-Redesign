import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_redesign_ios/initializer.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'user_chats.dart';

class Chat extends StatefulWidget {
 
  @override
  _Chat createState() => _Chat();
}

class _Chat extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final initializer = Provider.of<Initializer>(context);
    print(initializer.chatUserName);
    return Scaffold(
      resizeToAvoidBottomInset: true,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black87),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Lokesh Kashyap',
                  style: TextStyle(color: Colors.black87, fontSize: 18.0)),
              Text('Active Now',
                  style: TextStyle(color: Colors.green, fontSize: 14.0))
            ],
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.videocam), onPressed: null),
            IconButton(icon: Icon(Icons.call), onPressed: null),
            IconButton(icon: Icon(LineAwesomeIcons.ellipsis_v), onPressed: null)
          ],
        ),
        bottomNavigationBar: Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Container(
                    // margin: EdgeInsets.only(right: 10.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.add_circle,
                        size: 30.0,
                        color: Color(0xff075E55),
                      ),
                      onPressed: null,
                    )),
                Container(
                    // margin: EdgeInsets.only(top: 7.0),
                    width: MediaQuery.of(context).size.width / 2,
                    height: 40.0,
                    child: CupertinoTextField(
                      // padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Color(0xFFE2E7EA),
                          borderRadius: BorderRadius.circular(20.0)),
                      placeholder: ' Enter Message',
                      placeholderStyle:
                          TextStyle(fontSize: 15.0, color: Colors.black45),
                      onTap: () {
                        print(
                            '####################### Search Tapped @@@@@@@@@@@@@@@@@@@@@');
                      },
                      onSubmitted: (action) {
                        print('############### Search Done @@@@@@@@@@@@@@@@');
                      },
                    )),
                Container(
                    // margin: EdgeInsets.only(right: 15.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.mic,
                        size: 30.0,
                        color: Color(0xff075E55),
                      ),
                      onPressed: null,
                    )),
                Container(
                    // margin: EdgeInsets.only(right: 15.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        size: 30.0,
                        color: Color(0xff075E55),
                      ),
                      onPressed: null,
                    )),
              ],
            )),
        body: UserChats());
  }
}
