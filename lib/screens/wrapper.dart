import 'package:flutter/material.dart';
import 'package:ven/screens/Register_Screen.dart';
import 'package:ven/screens/Splash_Screen.dart';

void main() {
  runApp((Wrapper()));
}

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Splash_Screen',
      routes: {
        '/Splash_Screen': (context) => SplashScreen(),
        '/Register_Screen': (context) => RegisterScreen(),
      },
    );
  }
}
