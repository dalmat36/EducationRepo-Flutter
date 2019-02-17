import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.greenAccent,
        alignment: Alignment.center,
        child: new Column(
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
        ));
  }
}
