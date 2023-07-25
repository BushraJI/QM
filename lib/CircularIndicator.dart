import 'package:flutter/material.dart';

class CircularIndicator extends StatefulWidget {
  @override
  _CircularIndicatorState createState() => _CircularIndicatorState();
}

class _CircularIndicatorState extends State<CircularIndicator> {
  bool visible = true;

  @override
  void initState() {
    super.initState();
    // Simulate an async operation
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        visible = false; // Hide the circular progress indicator after 2 seconds
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              visible: visible,
              child: Container(
                margin: EdgeInsets.only(top: 50, bottom: 30),
                child: CircularProgressIndicator(),
              ),
            ),
            // Optional text to show while the circular indicator is visible
          ],
        ),
      ),
    );
  }
}
