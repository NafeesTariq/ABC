import 'package:flutter/material.dart';

import 'package:viewbooster/resources/components/AppBar.dart';

class BuyPoints extends StatefulWidget {
  const BuyPoints({super.key});

  @override
  State<BuyPoints> createState() => _ListViewScreanState();
}

class _ListViewScreanState extends State<BuyPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text('View Booster App'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: const Text('VIP Account'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.speaker_notes),
                title: const Text('Start a new Compaign'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: const Text('My Compaigns'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.star_border),
                title: const Text('Earn Points'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip),
                title: const Text('Privacy Policy'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.rate_review),
                title: const Text('Rate Us'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: const Text('Exit'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Column(children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Center(
                      child: SizedBox(
                          height: 150,
                          child: Image.asset("assets/images/cart2.png")),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 61,
                  width: 330,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: .5, spreadRadius: 0, offset: Offset(0, 1))
                    ],
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: Text(
                      "5,000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    title: Row(children: [
                      SizedBox(
                          height: 25,
                          child: Image.asset("assets/images/star.png")),
                    ]),
                    trailing: Container(
                      height: 38,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          " 0.99 \$",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  height: 61,
                  width: 330,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: .5, spreadRadius: 0, offset: Offset(0, 1))
                    ],
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: Text(
                      "11,000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    title: Row(children: [
                      SizedBox(
                          height: 25,
                          child: Image.asset("assets/images/star.png")),
                    ]),
                    trailing: Container(
                      height: 38,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          " 1.99 \$",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  height: 61,
                  width: 330,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: .5, spreadRadius: 0, offset: Offset(0, 1))
                    ],
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: Text(
                      "32,000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    title: Row(children: [
                      SizedBox(
                          height: 25,
                          child: Image.asset("assets/images/star.png")),
                    ]),
                    trailing: Container(
                      height: 38,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          " 4.99 \$",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  height: 61,
                  width: 330,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: .5, spreadRadius: 0, offset: Offset(0, 1))
                    ],
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: Text(
                      "80,000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    title: Row(children: [
                      SizedBox(
                          height: 25,
                          child: Image.asset("assets/images/star.png")),
                    ]),
                    trailing: Container(
                      height: 38,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          " 9.99 \$",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  height: 61,
                  width: 330,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: .5, spreadRadius: 0, offset: Offset(0, 1))
                    ],
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: Text(
                      "280,000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    title: Row(children: [
                      SizedBox(
                          height: 25,
                          child: Image.asset("assets/images/star.png")),
                    ]),
                    trailing: Container(
                      height: 38,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          " 24.99 \$",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  height: 61,
                  width: 330,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: .5, spreadRadius: 0, offset: Offset(0, 1))
                    ],
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: Text(
                      "700,000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    title: Row(children: [
                      SizedBox(
                          height: 25,
                          child: Image.asset("assets/images/star.png")),
                    ]),
                    trailing: Container(
                      height: 38,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          " 49.99 \$",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  height: 61,
                  width: 330,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: .5, spreadRadius: 0, offset: Offset(0, 1))
                    ],
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: Text(
                      "1,650,000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    title: Row(children: [
                      SizedBox(
                          height: 25,
                          child: Image.asset("assets/images/star.png")),
                    ]),
                    trailing: Container(
                      height: 38,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          " 99.99 \$",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
