import 'package:flutter/material.dart';
import 'package:foodpanda_app/ManageResume.dart';
import 'package:foodpanda_app/MyMessages.dart';
import 'package:foodpanda_app/Viewpublicprofile.dart';

import 'Editprofile.dart';
import 'HomeScreen.dart';
import 'MyFollowing.dart';
import 'Myjobapplication.dart';
import 'custom_widgets/button_design.dart';
import 'custom_widgets/button_design_icon.dart';

class Myprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 8,
              ),
              ButtonDesignWithIcon(
                buttonText: "Edit profile",
                buttonIcon: Icons.edit,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Editprofile()),
                  );
                },
              ),
              const SizedBox(
                height: 8,
              ),
              ButtonDesignWithIcon(
                buttonText: "View Public Profile",
                buttonIcon: Icons.panorama_fish_eye,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Viewpublicprofile()),
                  );
                },
              ),
              const SizedBox(
                height: 8,
              ),
              ButtonDesignWithIcon(
                buttonText: "My Job Application",
                buttonIcon: Icons.settings_applications,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyJobApplication()),
                  );
                },
              ),
              const SizedBox(
                height: 8,
              ),
              ButtonDesignWithIcon(
                buttonText: "Manage Resume",
                buttonIcon: Icons.manage_accounts_rounded,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ManageResume()),
                  );
                },
              ),
              const SizedBox(
                height: 8,
              ),
              ButtonDesignWithIcon(
                buttonText: "My Messages",
                buttonIcon: Icons.message,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyMessages()),
                  );
                },
              ),
              const SizedBox(
                height: 8,
              ),
              ButtonDesignWithIcon(
                buttonText: "My Following",
                buttonIcon: Icons.face_2,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyFollowing()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
