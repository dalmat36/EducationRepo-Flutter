import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  void _onPressed(){
    debugPrint("Search Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
          appBar: new AppBar(
          backgroundColor: Colors.greenAccent,
            title: new Text("Fancy Day"),
            actions: <Widget>[
              new IconButton(icon: new Icon(Icons.send), onPressed: () => debugPrint("Send Pressed")),
              new IconButton(icon: new Icon(Icons.search), onPressed: _onPressed)
            ],
          ),
        );
  }
}
