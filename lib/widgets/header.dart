import 'package:flutter/material.dart';

AppBar Header(context, {bool isAppTittle = false, required String titleText}) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Center(
          child: Text(
            isAppTittle ? 'INBOX' : titleText,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Icon(Icons.location_on),
      ],
    ),
  );
}
