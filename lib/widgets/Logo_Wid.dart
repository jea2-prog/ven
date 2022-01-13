import 'package:flutter/material.dart';
import 'package:ven/main.dart';

void main() {
  runApp(MyApp());
}

class Logowid extends StatefulWidget {
  @override
  _LogowidState createState() => _LogowidState();
}

class _LogowidState extends State<Logowid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          height: 90,
          width: 90,
          child: Image.asset('assets/logo/logoa.jpeg'),
        ),
      ),
    );
  }
}
