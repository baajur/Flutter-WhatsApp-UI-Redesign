import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewChatSelectContactsSearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: CupertinoTextField(
            prefix: Container(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                CupertinoIcons.search,
                size: 20.0,
                color: Colors.black,
              ),
            ),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Color(0xFFE2E7EA),
                borderRadius: BorderRadius.circular(20.0)),
            placeholder: 'Search...',
            placeholderStyle: TextStyle(fontSize: 15.0),
            onTap: () {
              print(
                  '####################### Search Tapped @@@@@@@@@@@@@@@@@@@@@');
            },
            onSubmitted: (action) {
              print('############### Search Done @@@@@@@@@@@@@@@@');
            },
          ));
  }
}
