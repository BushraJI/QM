import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_app/TestScreen.dart';
import 'package:foodpanda_app/NavigationDrawerDemo.dart';
import 'package:foodpanda_app/resources/app_colors.dart';

import 'custom_widgets/food_custom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final globalKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: globalKey,
      backgroundColor: AppColors.backgroundColor,
      drawer: NavigationDrawerDemo(),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColors.primary,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            globalKey.currentState!.openDrawer();
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Home",
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TestScreen()),
              );
            },
            icon: const Icon(Icons.card_travel),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 12.0,
              bottom: 12.0,
            ),
            child: CupertinoTextField(
              obscureText: false,
              placeholder: "Keywords / Job Title",
              prefix: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (() => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TestScreen()),
                        )),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'One million success stories and counting. Will you be next?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
