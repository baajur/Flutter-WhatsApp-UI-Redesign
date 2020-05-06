import 'package:flutter/material.dart';

class AllSettings extends StatefulWidget {
  @override
  _AllSettings createState() => _AllSettings();
}

class _AllSettings extends State<AllSettings> {
  Widget account() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(15),
                child: Icon(
                  Icons.vpn_key,
                  color: Color(0xFF35A897),
                  size: 30,
                )),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                            child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Account',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        )),
                        Container(
                            child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Privacy, Security, Change Number',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 13),
                          ),
                        ))
                      ],
                    )))
          ],
        ));
  }

  Widget chats() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(15),
                child: Icon(
                  Icons.chat,
                  color: Color(0xFF35A897),
                  size: 30,
                )),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                            child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Chats',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        )),
                        Container(
                            child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Backup, History, Wallpaper',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 13),
                          ),
                        ))
                      ],
                    )))
          ],
        ));
  }

  Widget notifications() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(15),
                child: Icon(
                  Icons.notifications,
                  color: Color(0xFF35A897),
                  size: 30,
                )),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                            child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Notification',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        )),
                        Container(
                            child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Message, Groups & Call Tones',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 13),
                          ),
                        ))
                      ],
                    )))
          ],
        ));
  }

  Widget dataAndStorageUsage() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(15),
                child: Icon(
                  Icons.data_usage,
                  color: Color(0xFF35A897),
                  size: 30,
                )),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                            child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Data & Storage Usage',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        )),
                        Container(
                            child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Network Usage, Auto-Download',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 13),
                          ),
                        ))
                      ],
                    )))
          ],
        ));
  }

  Widget help() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(15),
                child: Icon(
                  Icons.help,
                  color: Color(0xFF35A897),
                  size: 30,
                )),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                            child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Help',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        )),
                        Container(
                            child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'FAQ, Contact Us, Privacy Policy',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 13),
                          ),
                        ))
                      ],
                    )))
          ],
        ));
  }

  Widget inviteFriend() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(15),
                child: Icon(
                  Icons.people,
                  color: Color(0xFF35A897),
                  size: 30,
                )),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                            child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Invite a Friend',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        )),
                      ],
                    )))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        account(),
        chats(),
        notifications(),
        dataAndStorageUsage(),
        help(),
        Opacity(
            opacity: 0.2,
            child: Container(
              margin: EdgeInsets.only(left: 70, top: 15, bottom: 15),
              height: 1,
              decoration: BoxDecoration(border: Border.all()),
            )),
        inviteFriend()
      ],
    );
  }
}
