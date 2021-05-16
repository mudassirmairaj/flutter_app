import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(MyApp()); // main function is the entry point of our app

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App!',
      home: HomePage()
    );
  }
}
