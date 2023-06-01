import 'dart:async';  
import 'package:flutter/material.dart';  
  
void main() { runApp(const FOODPANDA_APP());}  
  
// ignore: camel_case_types
class FOODPANDA_APP extends StatelessWidget {
  const FOODPANDA_APP({super.key});
  
  @override  
  Widget build(BuildContext context) {  
    return const MaterialApp(  
      home: MyHomePage(),  
      debugShowCheckedModeBanner: false,  
    );  
  }  
}  
  
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  
  @override  
  SplashScreenState createState() => SplashScreenState();  
}  
class SplashScreenState extends State<MyHomePage> {  
  @override  
  void initState() {  
    super.initState();  
    Timer(const Duration(seconds: 5),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) => const HomeScreen()  
            )  
         )  
    );  
  }  
  @override  
  Widget build(BuildContext context) {  
    return Container(  
        color: Colors.yellow,  
        child:FlutterLogo(size:MediaQuery.of(context).size.height)  
    );  
  }  
}  
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(title:const Text("Splash Screen Example")),  
      body: const Center(  
          child:Text("Welcome to Home Page",  
              style: TextStyle( color: Colors.black, fontSize: 30)  
          )  
      ),  
    );  
  }  
}  