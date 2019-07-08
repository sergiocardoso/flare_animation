import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flare_dart/actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _anim = "spin1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: GestureDetector(
      child: Container(
          width: 200,
          height: 200,
          child: FlareActor(
            "assets/GearAnimation.flr",
            animation: _anim,
          )),
      onTap: () {
        setState(() {
          if (_anim == "spin1")
            _anim = "spin2";
          else
            _anim = "spin1";
        });
      },
    )));
  }
}
