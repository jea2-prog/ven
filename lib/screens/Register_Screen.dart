import 'package:flutter/material.dart';
import 'package:ven/screens/Authenticate/Service.dart';
import 'package:ven/screens/Authenticate/message.dart';

import 'package:ven/widgets/Logo_Wid.dart';

import 'Authenticate/homepage.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isAuth = false;

  buildAuthScreen() {
    return Service();
  }

  buildUnAuthScreen() {
    return Message();
  }

  @override
  Widget build(BuildContext context) {
    return isAuth ? buildUnAuthScreen() : buildUnAuthScreen();
  }
}
