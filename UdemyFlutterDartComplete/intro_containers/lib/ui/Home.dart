import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.greenAccent,
        alignment: Alignment.center,
        child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Item 1",
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                      fontSize: 12.9)),
              new Text("Item 2",
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                      fontSize: 12.9)),
              const Expanded(
                child: const Text("Item 3")
              )
              ]
        )
        /*child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("First Item",
                textDirection: TextDirection.ltr,
                style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 18.3)),
            new Text("Second Item",
                textDirection: TextDirection.ltr,
                style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 18.3)),
            new Container(
                color: Colors.deepOrange.shade50,
                alignment: Alignment.bottomLeft,
                child: new Text("Third Item",
                    textDirection: TextDirection.ltr,
                    style: new TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 18.3))
            )
          ],
        )*/
        );
  }
}
