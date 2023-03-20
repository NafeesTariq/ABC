import 'package:flutter/material.dart';

import '../color.dart';

class RoundButton extends StatelessWidget {
  //params
  final String title;
  bool loading;
  final VoidCallback onPress;

  RoundButton(
      {Key? key,
      required this.title,
      this.loading = false,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: loading
                ? CircularProgressIndicator(strokeWidth: 3, color: Colors.white)
                : Text(
                    title,
                    style: TextStyle(color: AppColors.WhiteColor),
                  ),
          )),
    );
  }
}
