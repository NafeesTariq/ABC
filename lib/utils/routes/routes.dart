import 'package:flutter/material.dart';
import 'package:viewbooster/utils/routes/rotes_named.dart';
import 'package:viewbooster/inv/Signup_view.dart';
import 'package:viewbooster/views/Tabs/pointsTab/PointsTab.dart';
import 'package:viewbooster/inv/login_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.Points_Tab:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Points_Tab());
      // case RoutesName.SignUp:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => const SignUp());
      // case RoutesName.SignUp:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => const LoginScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text("No Route Defined"),
            ),
          );
        });
    }
  }
}
