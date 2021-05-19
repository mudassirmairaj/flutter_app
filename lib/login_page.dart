import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              'images/login_image.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ), SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Login'))
                ],
              ),
            ),
          ],
        ));
  }
}
