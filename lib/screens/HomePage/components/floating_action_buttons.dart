import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class FloatingActionButtons extends StatefulWidget {
  @override
  _FloatingActionButtons createState() => _FloatingActionButtons();
}

class _FloatingActionButtons extends State<FloatingActionButtons> {
  bool chat_options = false;
  double options_width = 70.0;

  Widget chatOptions() {
    if (chat_options) {
      return Icon(LineAwesomeIcons.times, color: Colors.white);
    } else {
      return Icon(LineAwesomeIcons.comments, color: Colors.white);
    }
  }

  changeChatOptions() {
    setState(() {
      if (chat_options) {
        options_width = 70.0;
      } else {
        options_width = 250.0;
      }
      chat_options = !chat_options;
    });
  }

  Widget moreOptions() {
    return Container(
        width: 160.0,
        height: 55.0,
        decoration: BoxDecoration(
            color: Color(0xff075E55),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 4.0,
              ),
            ]),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: EdgeInsets.all(10),
              child: Icon(LineAwesomeIcons.search, color: Colors.white)),
          Container(
              margin: EdgeInsets.all(10),
              child: Icon(LineAwesomeIcons.bullhorn, color: Colors.white)),
          Container(
              margin: EdgeInsets.all(10),
              child: Icon(LineAwesomeIcons.user_plus, color: Colors.white)),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      width: options_width,
      height: 60.0,
      child: Stack(
        children: <Widget>[
          chat_options ? moreOptions() : Container(),
          Positioned(
              right: 10.0,
              child: FloatingActionButton(
                  onPressed: () {
                    changeChatOptions();
                  },
                  backgroundColor: Color(0xff075E55),
                  child: chatOptions()))
        ],
      ),
    );
  }
}
