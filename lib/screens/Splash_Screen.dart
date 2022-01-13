import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ven/screens/Register_Screen.dart';
import 'package:ven/widgets/Logo_Wid.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  //ignore: must_call_super
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamed(context, '/Register_Screen');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Logowid()],
      ),
    );
  }
}
