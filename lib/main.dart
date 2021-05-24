import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';
import 'package:flutter_app/login_page.dart';
import 'package:flutter_app/utilities/routes.dart';
import 'package:google_fonts/google_fonts.dart';


import 'utilities/routes.dart';
import 'utilities/routes.dart';


void main() => runApp(MyApp()); // main function is the entry point of our app

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: GoogleFonts.poppins().fontFamily),
      debugShowCheckedModeBanner: false,
      title: 'Flutter App!',
   initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },


    );
  }
}
