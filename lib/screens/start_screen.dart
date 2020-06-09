import 'package:flutter/material.dart';
import 'package:kanata/screens/guide_screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: Column(
                children: <Widget>[
                  Image.asset("assets/images/start.jpg"),
                  Text("キャッチコピー"),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () => _nextToGuide(context),
                        child: Text("はじめよう"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ),
      ),
    );
  }

  _nextToGuide(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => GuideScreen()));
  }
}