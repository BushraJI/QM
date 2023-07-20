import 'package:flutter/material.dart';
import 'package:foodpanda_app/AboutUs.dart';
import 'package:foodpanda_app/ContactUs.dart';

import 'Companies.dart';
import 'Jobs.dart';
import 'Myprofile.dart';

class NavigationDrawerDemo extends StatefulWidget {
  NavigationDrawerDemo() : super();

  final String title = "Navigation Drawer Demo";

  @override
  _NavigationDrawerDemoState createState() => _NavigationDrawerDemoState();
}

class _NavigationDrawerDemoState extends State<NavigationDrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/QM.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "QM Connects",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Colors.black87),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Myprofile()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Jobs'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => jobs()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.compare_outlined),
            title: Text('Companies'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Companies()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.help_center),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUsScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text('Contact Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUsScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text('Logout'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
