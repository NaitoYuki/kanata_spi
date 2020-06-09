import 'package:flutter/material.dart';
import 'package:kanata/screens/top_screen.dart';

class GuideScreen extends StatelessWidget {
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
                    Text("アプリの説明"),
                    Image.asset("assets/images/guide.jpg"),
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: RaisedButton(
                          color: Colors.blue,
                          onPressed: () => _nextToTop(context),
                          child: Text("進む"),
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

  _nextToTop(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TopScreen()));
  }
}