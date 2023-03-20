import 'package:flutter/material.dart';
import 'package:viewbooster/Firebase_Services/splash_services.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  SplashServices splashServicesVar = SplashServices();
  @override
  void initState() {
    splashServicesVar.islogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/logo.png")),
          ]),
    );
  }
}
