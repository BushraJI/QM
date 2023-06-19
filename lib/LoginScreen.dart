import 'package:flutter/material.dart';
import 'package:foodpanda_app/HomeScreen.dart';
import 'package:foodpanda_app/SignupScreen.dart';
import 'ForgetPasswordScreen.dart';
import 'custom_widgets/button_design.dart';
import 'custom_widgets/textform_field.dart';

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: const BoxDecoration(color: Color(123465)),
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
                          'Login to your account',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 50),
                      CustomTextField('Email'),
                      const SizedBox(height: 30),
                      CustomTextField('Password'),
                      const SizedBox(
                        height: 30,
                      ),
                      ButtonDesign(
                        buttonText: "Login",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPasswordScreen()),
                          );
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(children: <Widget>[
                        Expanded(
                          child: new Container(
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 15.0),
                              child: Divider(
                                indent: 10,
                                color: Colors.black,
                                height: 50,
                              )),
                        ),
                        Text("OR"),
                        Expanded(
                          child: new Container(
                              margin: const EdgeInsets.only(
                                  left: 15.0, right: 10.0),
                              child: Divider(
                                endIndent: 10,
                                color: Colors.black,
                                height: 50,
                              )),
                        ),
                        const SizedBox(height: 20),
                      ]),
                      ButtonDesign(
                        buttonText: "Signup",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              color: Colors.white,
                              child: TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.call,
                                        color: Colors.pink,
                                        size: 23,
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Login with phone number',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.pink,
                                          fontWeight: FontWeight.bold),
                                      //],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
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

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}
