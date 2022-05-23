import 'package:flutter/material.dart';
import 'package:pizzaria/screens/login.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
          ),
          child: Text('Back to login', style: TextStyle(fontSize: 20)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
        ),
      ));
}
