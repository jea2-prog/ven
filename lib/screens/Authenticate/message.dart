import 'package:flutter/material.dart';
import 'package:ven/widgets/header.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(context, titleText: 'INBOX'),
      body: Text('data'),
    );
  }
}
