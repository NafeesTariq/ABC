import 'package:flutter/material.dart';
import 'package:viewbooster/views/Tabs/ViewTab/views_screen.dart';

class SubscribeTab extends StatefulWidget {
  const SubscribeTab({super.key});

  @override
  State<SubscribeTab> createState() => _ViewTabState();
}

class _ViewTabState extends State<SubscribeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 100,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: SizedBox(
              height: 300, child: Image.asset("assets/images/viewBooster.png")),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 60),
              child: Text(
                "60",
                style: TextStyle(color: Colors.red, fontSize: 45),
              ),
            ),
            Text(
              "Seconds",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            VerticalDivider(
              color: Colors.amber,
            ),
            Text(
              "52",
              style: TextStyle(color: Colors.red, fontSize: 45),
            ),
            Text(
              "Points",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ViewsScreen()));
          },
          child: Container(
            height: 40,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                "START WATCHING",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
