import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Welcome to Flutter',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.blue),
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Welcome to 30 days of flutter',
            style: TextStyle(
                fontFamily: 'Poppins', color: Colors.white, fontSize: 18),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
