import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 37),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 28,
                ),
                SizedBox(
                  height: 15,
                ),
                Head(context,
                    etext: 'Kindly',
                    btext: 'Profile yourself',
                    ctext: 'We want to know more about you'),
                SizedBox(
                  height: 20,
                ),
                Forms(),
                SizedBox(
                  height: 51,
                ),
                Button(
                  buttonText: 'Next',
                )
    );
  }
}
