import 'package:flutter/material.dart';
import 'package:foodpanda_app/LoginScreen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'QM Connect',
          theme: ThemeData.light(),
          home: LoginScreen(),
        );
      },
    );
  }
}
