import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_redesign_ios/initializer.dart';
import 'package:provider/provider.dart';

class WhatsAppHomeSearchBar extends StatelessWidget {
  Widget searchBar(initializer, context) {
    bool searchBarStatus = initializer.searchBar;
    return Container(
          margin: EdgeInsets.symmetric(horizontal: searchBarStatus ? 10.0 : 0.0),
          width: MediaQuery.of(context).size.width - (searchBarStatus ? 100 : 50),
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
              if (!searchBarStatus) {
                initializer.toogleSearchBar();
              }
            },
            onSubmitted: (action) {
              print('############### Search Done @@@@@@@@@@@@@@@@');
            },
          ));
  }

  Widget backArrow(initializer) {
    if (initializer.searchBar) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: GestureDetector(child: Icon(Icons.arrow_back), onTap: () {
         initializer.toogleSearchBar(); 
        }),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    final initializer = Provider.of<Initializer>(context);
    return Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            backArrow(initializer),
            searchBar(initializer, context)],
        ));
  }
}
