import 'package:flutter/material.dart';
import 'package:foodpanda_app/SignupScreen.dart';
import 'custom_widgets/button_design.dart';
import 'custom_widgets/textform_field.dart';
import 'custom_widgets/flutter_icons.dart';

class ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/food_order.jpg'),
                fit: BoxFit.cover)),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 120, left: 20, right: 20, bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 2),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 2, spreadRadius: 2, offset: Offset(0, 9)),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
                  child: Column(
                    children: [
                      Image.asset('assets/images/panda.png',
                          height: 100, width: 100),
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Welcome to your restaurant',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'portal from foodpanda',
                          style: TextStyle(fontSize: 23, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Reset to your account',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      ButtonDesign(
                        buttonText: "Forget Password",
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  ForgetPasswordScreenState createState() => ForgetPasswordScreenState();
}
