import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          child: Text(
            'Login Page',
            style: TextStyle(fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
