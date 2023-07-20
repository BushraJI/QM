import 'package:flutter/material.dart';
import 'package:foodpanda_app/HomeScreen.dart';
import 'package:foodpanda_app/SignupScreen.dart';
import 'package:sizer/sizer.dart';
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
                image: AssetImage('assets/images/QM.png'), fit: BoxFit.cover)),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 20, right: 20, bottom: 20),
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Image.asset('assets/images/QM.png',
                      height: 100, width: 160),
                ),
                const SizedBox(height: 2),
                const SizedBox(height: 20),
                Text(
                  'Login to your account',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50.h,
                  child: SingleChildScrollView(
                    child: Positioned(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, right: 20, left: 20),
                        child: Column(
                          children: [
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
                                      builder: (context) =>
                                          ForgetPasswordScreen()),
                                );
                              },
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                    color: Colors.blue,
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
                              buttonText: "Register",
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupScreen()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
