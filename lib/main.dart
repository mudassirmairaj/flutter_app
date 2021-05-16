import 'package:flutter/material.dart';

void main() => runApp(MyApp()); // main function is the entry point of our app

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App!',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Welcome to Flutter',
            style: TextStyle(fontFamily: 'Poppins'),
          ),
        ),
        body: Center(
          child: Text(
            'Welcome to 30 days of flutter',
            style: TextStyle(fontFamily: 'Poppins'),
          ),
        ),
      ),
    );
  }
}
