import 'package:fast_food/Screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:fast_food/screens/splash.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fast food App",
      //home: Welcome(),
      home: Scaffold(
          body: PageView(physics: BouncingScrollPhysics(), children: <Widget>[
        Splash(),
        Welcome(),
      ])),
    );
  }
}
