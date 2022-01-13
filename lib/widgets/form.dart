import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  Forms({Key? key}) : super(key: key);

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextFormField(
            autofillHints: [AutofillHints.name],
            decoration: InputDecoration(
                focusColor: Colors.red,
                fillColor: Colors.grey,
                labelText: 'Fullname',
                hintText: 'Fullname ',
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 33,
          ),
          TextFormField(
            autofillHints: [AutofillHints.email],
            validator: (value) {
              if (value!.isEmpty) {
                return 'This field is required';
              }
              if (!value.contains('@')) {
                return 'A valid email is required';
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
                focusColor: Colors.red,
                fillColor: Colors.grey,
                labelText: 'Email',
                hintText: 'Email ',
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 33,
          ),
          TextField(
            
            decoration: InputDecoration(
              
              suffixIcon: IconButton(
                  onPressed: () {}, icon: Icon(Icons.visibility_off)),
              hintText: 'Password',
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
