import 'package:flutter/material.dart';

class MyMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Messages'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Text(
                'Message will display here ',
                style: TextStyle(fontSize: 18),
              ),
            )
          ]),
        ));
  }
}
