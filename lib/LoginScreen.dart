import 'package:flutter/material.dart';
import 'package:foodpanda_app/SignupScreen.dart';
import 'custom_widgets/button_design.dart';
import 'custom_widgets/textform_field.dart';

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(123465)),
        // image: DecorationImage(
        //     image: AssetImage('images/food_order.jpg'), fit: BoxFit.cover)),
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
                        'Welcome to our dining establishment',
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
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Forgot password',
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(children: <Widget>[
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 15.0),
                            child: Divider(
                              indent: 10,
                              color: Colors.black,
                              height: 50,
                            )),
                      ),
                      Text("OR"),
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 15.0, right: 10.0),
                            child: Divider(
                              endIndent: 10,
                              color: Colors.black,
                              height: 50,
                            )),
                      ),
                      const SizedBox(height: 20),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Center(
                              child: Text(
                                'Signup',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}
