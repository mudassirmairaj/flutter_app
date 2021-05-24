import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final imgUrl =
      'https://scontent.fkhi16-1.fna.fbcdn.net/v/t1.6435-0/p206x206/93173456_1122781691403704_6694033274748010496_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=da31f3&_nc_ohc=Oe_hVXbf4EUAX-4OuDG&_nc_oc=AQm2icR26pwQoQVrBf0uKliMtsgv5HcyqVn90uoPV8x0HCE_OCVzAbhQvh8p8ZVyho0&_nc_ht=scontent.fkhi16-1.fna&tp=6&oh=02ba4e4f04eabcbf3bc60eda0703ef87&oe=60D19120';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text('Mudassir'),
                accountEmail: Text('mudassirmairaj18@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ), ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                'Email Me',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
