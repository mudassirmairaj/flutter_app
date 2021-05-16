import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  final String title = 'Catalog App';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '$title',
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Welcome to 30 days of flutter',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                ),
              ),
            ),
            RaisedButton(
              child: Text('Login Page'),
              onPressed: () {
                // Navigate to the second screen using a named route.
              },
            )
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
