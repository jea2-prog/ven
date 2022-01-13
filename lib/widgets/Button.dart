import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String? buttonText;
  const Button({Key? key, this.buttonText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Center(
        child: Text('$buttonText'),
      ),
      onPressed: () {},
    );
  }
}
