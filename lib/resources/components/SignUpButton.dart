import 'package:flutter/material.dart';
import '../color.dart';

class SignUpButton extends StatelessWidget {
  //params
  final String title;
  bool loading;
  final VoidCallback onPress;

  SignUpButton(
      {Key? key,
      required this.title,
      this.loading = false,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Center(
        child: Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.amber,
              boxShadow: [BoxShadow(blurRadius: 1, offset: Offset(1, 1))],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Text("Sign Up with Google"))),
      ),
    );
  }
}
