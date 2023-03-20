import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(actions: <Widget>[
      Row(children: [
        Text(
          "413",
          style: TextStyle(fontSize: 22),
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                height: 28, child: Image.asset("assets/images/star.png"))),
      ])
    ], backgroundColor: Colors.red, title: const Text('ViewBooster'));
  }
}
