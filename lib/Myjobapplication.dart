import 'package:flutter/material.dart';

class MyJobApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Job Application'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.0),
              Text(
                'Applied Job',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
