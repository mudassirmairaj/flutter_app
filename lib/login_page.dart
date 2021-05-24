import 'package:flutter/material.dart';
import 'package:flutter_app/utilities/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false; // for doing if else that after the changeButton change to true the width change and the text change to icon
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome $name',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  // fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                    onChanged: (value){
                      setState(() {
                        name = value;
                      });
                    },
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),

                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    // async and await use to set the time that take 1 second after change button changes its state to true that go to the
                    //new page
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      alignment: Alignment.center,
                      height: 50,
                      width: changeButton ? 50 : 140,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              'Login',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                          shape: changeButton
                              ? BoxShape.circle
                              : BoxShape.rectangle),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
