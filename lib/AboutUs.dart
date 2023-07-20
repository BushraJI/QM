import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'We are a team of HR professionals and believe the future depends on human development. We started in mid-2022 and focused on connecting people to develop them using our job portal. Using technology, we will help people achieve their goals and portray a good human face as a second step.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'We have headquarters in Karachi, Pakistan. Our people have worked across the globe in multiple cultures, which gives us an edge. Our strength lies in our diverse personal and professional experiences. To connect with our professionals, please email us at:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'info@binlaygreen.com',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
