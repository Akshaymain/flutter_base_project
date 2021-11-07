import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final Widget child;
  final AppBar? appBar;
  const MainScreen({Key? key, required this.child, this.appBar})
      : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: widget.appBar,
      body: SafeArea(child: Material(child: widget.child)),
    );
  }
}
