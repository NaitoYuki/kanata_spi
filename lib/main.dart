import 'package:flutter/material.dart';
import 'package:kanata/screens/start_screen.dart';
import 'package:kanata/screens/top_screen.dart';
import 'package:kanata/style/style.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "SPI App",
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: BoldFont
        ),
        home: StartScreen(),
    );
  }
}
