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
    // final DealsController dealsController = Get.put(
    //   DealsController(),
    // );
    final globalKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: globalKey,
      backgroundColor: AppColors.backgroundColor,
      drawer: NavigationDrawerDemo(),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColors.primary,
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Open menu options
                globalKey.currentState!.openDrawer(); //<-- SEE HERE

              },
            ),
          ],
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Delivery Address"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TestScreen()
                    // const CardScreen(),
                    ),
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
              placeholder: "Search for shops & restaurants",
              prefix: const Padding(
                  padding: EdgeInsets.all(8.0), child: Icon(Icons.search)),
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
                          MaterialPageRoute(builder: (context) => TestScreen()
                              // const FoodDelivery(),
                              ),
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
                              children: const [
                                FoodCustom(
                                  text: "Food delivery",
                                  subtext: "Order food you love",
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          // Container(
                          //   alignment: Alignment.bottomRight,
                          //   child: const Image(
                          //     height: 180,
                          //     image: AssetImage("assets/images/food1.png"),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TestScreen()
                                // const ShopsScreen(),
                                ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const FoodCustom(
                                  text: "Shops",
                                  subtext: "Groceries and more",
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                // Container(
                                //   alignment: Alignment.bottomRight,
                                //   child: const Image(
                                //     height: 110,
                                //     image: AssetImage("assets/images/food2.png"),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => TestScreen()
                                            // const PandamartScreen(),
                                            ),
                                      );
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        FoodCustom(
                                          text: "pandamart",
                                          subtext:
                                              "Fast delivery, up to 40% off",
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  // Container(
                                  //   alignment: Alignment.bottomRight,
                                  //   child: const Image(
                                  //     height: 80,
                                  //     image: AssetImage("assets/images/food3.png"),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TestScreen()
                                    // const PickupScreen(),
                                    ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        FoodCustom(
                                          text: "Pick-up",
                                          subtext: "Up to 50% off",
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  // Container(
                                  //   alignment: Alignment.bottomRight,
                                  //   child: const Image(
                                  //     height: 50,
                                  //     image: AssetImage("assets/images/food4.png"),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cuisines",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TestScreen()
                                // const CuisinesScreen(),
                                ),
                          );
                        },
                        // child: ListView.builder(
                        //     scrollDirection: Axis.horizontal,
                        //     itemCount: dealsController.cuisines.length,
                        //     itemBuilder: (context, index) {
                        //       return Card(
                        //         child: Column(
                        //           children: [
                        //             Padding(
                        //               padding: const EdgeInsets.all(8.0),
                        //               child: Image.asset(
                        //                 '${dealsController.cuisines[index].imgc}',
                        //                 height: 80,
                        //               ),
                        //             ),
                        //             Text(
                        //               dealsController.cuisines[index].title.toString(),
                        //               style: const TextStyle(fontWeight: FontWeight.bold),
                        //             ),
                        //             const SizedBox(
                        //               height: 15,
                        //             ),
                        //             Padding(
                        //               padding: const EdgeInsets.all(8.0),
                        //               child: Image.asset(
                        //                 '${dealsController.cuisines2[index].imgc}',
                        //                 height: 80,
                        //               ),
                        //             ),
                        //             Text(
                        //               dealsController.cuisines2[index].title.toString(),
                        //               style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        //             ),
                        //           ],
                        //         ),
                        //       );
                        //     }),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Your daily deals",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Expanded(
                    //   child: ListView.builder(
                    //       scrollDirection: Axis.horizontal,
                    //       itemCount: dealsController.deals.length,
                    //       itemBuilder: (BuildContext context, index) {
                    //         return Card(
                    //           child: Row(
                    //             children: [
                    //               GestureDetector(
                    //                 onTap: () {
                    //                   Navigator.push(
                    //                     context,
                    //                     MaterialPageRoute(builder: (context) => TestScreen()
                    //                         // const DailyDeals(),
                    //                         ),
                    //                   );
                    //                 },
                    //                 child: Image.asset(
                    //                   '${dealsController.deals[index].img}',
                    //                   height: 200,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         );
                    //       }),
                    // )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    drawer:
    Drawer(
        child: ListView(
      children: [
        ListTile(
          title: const Text('Your Orders'),
        )
      ],
    ));
  }
}
