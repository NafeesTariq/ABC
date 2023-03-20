import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:viewbooster/resources/components/AppBar.dart';
import 'package:viewbooster/views/Tabs/CompaignTab/CompaignTab.dart';
import 'package:viewbooster/views/Tabs/LikeTab/likeTab.dart';

import 'package:viewbooster/views/Tabs/SubscribeTab/SubscribeTab.dart';
import 'package:viewbooster/views/Tabs/ViewTab/views_screen.dart';

import 'package:viewbooster/views/Tabs/pointsTab/PointsTab.dart';
import 'package:viewbooster/views/Tabs/pointsTab/PointsTabScreans/BuyPoints.dart';
import 'package:viewbooster/views/Tabs/pointsTab/PointsTabScreans/ViewMemberShip.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<Main> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    //we will place screans here
    SubscribeTab(),
    LikeTab(),
    ViewsScreen(),
    CompaignScreen(),
    Points_Tab(),
    // Icon(
    //   Icons.chat,
    //   size: 150,
    // ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(),
        // appBar: AppBar(
        //   actions: <Widget>[
        //     Row(children: [
        //       Text(
        //         "413",
        //         style: TextStyle(fontSize: 22),
        //       ),
        //       Icon(Icons.star_border),
        //     ])
        //   ],
        //   backgroundColor: Colors.red,
        //   title: Center(child: const Text('ViewBooster')),
        // ),
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
                child: Center(
                  child: Text(
                    'WELCOME',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                leading: InkWell(child: Icon(Icons.speaker_notes)),
                title: const Text('VIP Account'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ViewMemberShip()));
                },
              ),

              ListTile(
                leading: InkWell(child: Icon(Icons.speaker_notes)),
                title: const Text('Start a new Compaign'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CompaignScreen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: const Text('My Compaigns'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CompaignScreen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.star_border),
                title: const Text('Earn Points'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BuyPoints()));
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
                leading: InkWell(
                    onTap: () async {
                      await GoogleSignIn().signOut();
                      FirebaseAuth.instance.signOut();
                    },
                    child: Icon(Icons.exit_to_app)),
                title: InkWell(
                    onTap: () async {
                      await GoogleSignIn().signOut();
                      FirebaseAuth.instance.signOut();
                    },
                    child: const Text('SIgn Out')),
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
                  SystemNavigator.pop();
                },
              ),
            ],
          ),
        ),

        /////Body

        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(color: Colors.red),
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          // fixedColor: Colors.red,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
              ),
              label: 'Subscribe',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
              ),
              label: 'Like',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: 'View',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
              label: 'Compaign',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
              label: 'Points',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.chat),
            //   label: 'Chats',
            // ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }
}
