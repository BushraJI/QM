import 'package:flutter/material.dart';

class MyFollowing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Following'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Text(
                'Its blank on web ',
                style: TextStyle(fontSize: 18),
              ),
            )
          ]),
        ));
  }
}
