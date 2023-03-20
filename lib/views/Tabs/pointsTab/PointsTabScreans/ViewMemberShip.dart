import 'package:flutter/material.dart';

import 'package:viewbooster/resources/components/AppBar.dart';

class ViewMemberShip extends StatefulWidget {
  const ViewMemberShip({super.key});

  @override
  State<ViewMemberShip> createState() => _ViewMemberShipState();
}

class _ViewMemberShipState extends State<ViewMemberShip> {
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
            //Drawer ...........
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
                }),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 0,
                          blurRadius: 0.1,
                          offset: Offset(0, 0),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 85,
                            child: Image.asset("assets/images/crown.png")),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "BENEFITS",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "25% Off on Campaigns",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Increased Daily Limits( +100 )",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Remove Ads",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )),
            ),
          ),

          //1 Month

          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 0.1, spreadRadius: 0, offset: Offset(0, 0))
                ],
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
              ),
              child: ListTile(
                leading: Text(
                  "1 MONTH",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: Container(
                  height: 30,
                  width: 70,
                  child: Center(
                    child: Text(
                      " 4.99\$",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),

          //3 months
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 0.1, spreadRadius: 0, offset: Offset(0, 0))
                ],
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
              ),
              child: ListTile(
                leading: Text(
                  "3 MONTH  (Save 33%)",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: Container(
                  height: 30,
                  width: 70,
                  child: Center(
                    child: Text(
                      " 9.99\$",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),

          //1 year

          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 0.1, spreadRadius: 0, offset: Offset(0, 0))
                ],
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
              ),
              child: ListTile(
                leading: Text(
                  "1 Year",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: Container(
                  height: 30,
                  width: 70,
                  child: Center(
                    child: Text(
                      " 19.99\$",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),

          //text (Recurring bill)

          Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("Recurring Billing.  Cancel Anytime ")),
        ],
      ),
    );
  }
}
