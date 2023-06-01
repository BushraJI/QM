import 'package:flutter/material.dart';
import 'package:foodpanda_app/HomeScreen.dart';

import 'custom_widgets/button_design.dart';
import 'custom_widgets/textform_field.dart';

class SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/food_order.jpg'), fit: BoxFit.cover)),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 70, left: 20, right: 20, bottom: 20),
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
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  children: [
                    Image.asset('images/panda.png', height: 100, width: 100),
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
                        'Signup to your account',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 50),
                    CustomTextField('Username'),
                    const SizedBox(height: 50),
                    CustomTextField('Email'),
                    const SizedBox(height: 50),
                    CustomTextField('Contact number'),
                    const SizedBox(height: 30),
                    CustomTextField('Password'),
                    const SizedBox(
                      height: 30,
                    ),
                    ButtonDesign(),
                    const SizedBox(
                      height: 35,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  SignupScreenState createState() => SignupScreenState();
}
