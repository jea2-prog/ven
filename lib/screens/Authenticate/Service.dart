import 'package:flutter/material.dart';
import 'package:ven/widgets/header.dart';

class Service extends StatefulWidget {
  const Service({Key? key}) : super(key: key);

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(context, titleText: 'Craftmen near you'),
    );
  }
}
