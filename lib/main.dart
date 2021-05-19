import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';
import 'package:flutter_app/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp()); // main function is the entry point of our app

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.poppins().fontFamily
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter App!',
      // home: HomePage(),
      routes:{
        "/": (context) => LoginPage(),
        "login": (context) => LoginPage(),
      },
    );
  }
}
