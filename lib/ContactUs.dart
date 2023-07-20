import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Screen'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            onTap: () {
              // Handle phone contact
            },
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            onTap: () {
              // Handle email contact
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Address'),
            onTap: () {
              // Handle address contact
            },
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Oﬃce No. 02, Fortune Center, Shahra-e-faisal, Karachi.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
