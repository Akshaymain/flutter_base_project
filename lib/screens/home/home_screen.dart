import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/common/constants/strings.dart';
import 'package:flutter_base_project/screens/main/components/custom_appbar.dart';
import 'package:flutter_base_project/screens/main/main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      appBar: customAppBar(
          context: context,
          title: HOME,
          onLeadingTap: () => {Navigator.pop(context)}),
      child: Container(),
    );
  }
}
