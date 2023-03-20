import 'dart:async';

import 'package:flutter/material.dart';
import 'package:viewbooster/utils/routes/rotes_named.dart';

import 'package:viewbooster/inv/login_view.dart';
import 'package:viewbooster/views/login.dart';

class SplashServices {
  void islogin(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });
  }
}
