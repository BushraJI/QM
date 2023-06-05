import 'package:flutter/material.dart';
import 'package:foodpanda_app/SignupScreen.dart';
import 'custom_widgets/button_design.dart';
import 'custom_widgets/textform_field.dart';

class TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: const BoxDecoration(color: Color(123465)),
        decoration:
            const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/food_order.jpg'), fit: BoxFit.cover)),
        // image: DecorationImage(
        //     image: AssetImage('images/food_order.jpg'), fit: BoxFit.cover)),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120, left: 20, right: 20, bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 2),
                  boxShadow: const [
                    BoxShadow(blurRadius: 2, spreadRadius: 2, offset: Offset(0, 9)),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Positioned(
                  child: Padding(
                padding: const EdgeInsets.only(top:70, right: 20, left: 20),
                child: Column(
                  children: [
                    Image.asset('assets/images/panda.png', height: 100, width: 100),
                    const SizedBox(height: 120),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Comming soon',
                        style: TextStyle(fontSize: 25, color: Colors.black),
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

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  TestScreenState createState() => TestScreenState();
}
