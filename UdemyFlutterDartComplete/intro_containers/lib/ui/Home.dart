import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _onPressed() {
    debugPrint("Search Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.greenAccent,
        title: new Text("Fancy Day"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.send),
              onPressed: () => debugPrint("Send Pressed")),
          new IconButton(icon: new Icon(Icons.search), onPressed: _onPressed)
        ],
      ),
      backgroundColor: Colors.grey.shade200,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Bonni",
                style: new TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.deepOrange)),
            new InkWell(
              child: new Text("Button!"),
              onTap: () => debugPrint("Button Pressed"),
            )
          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.add), title: new Text("add")),
        new BottomNavigationBarItem(icon: new Icon(Icons.print), title: new Text("print")),
        new BottomNavigationBarItem(icon: new Icon(Icons.mail), title: new Text("mail"))
      ],
      onTap: (int i) => debugPrint("Pressed $i")),
    );
  }
}
