import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:viewbooster/utils/routes/rotes_named.dart';
import 'package:viewbooster/utils/utils.dart';

import '../repo/auth_repository.dart';

class AuthViewModel with ChangeNotifier {
  FirebaseAuth _authvar = FirebaseAuth.instance;

  bool _loading = false;
  bool get loading => _loading;
  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  bool _signUploading = false;
  bool get SignUploading => _signUploading;
  setsignUpLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  final _myrepo = AuthRepository();

  signup_auth(dynamic email, dynamic password, BuildContext context) {
    _authvar.createUserWithEmailAndPassword(email: email, password: password);

    //   .then((value) => {})
    //   .onError((error, stackTrace) {
    // Utils().toastmessage(error.toString());
    // });
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setLoading(true);
    _myrepo.loginApi(data).then((value) {
      setLoading(false);
      Utils.flushBarErrorMessage("Login Successful", context);
      Navigator.pushNamed(context, RoutesName.Points_Tab);

      if (kDebugMode) {
        print(
          value.toString(),
        );
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        setLoading(false);
        Utils.flushBarErrorMessage(error.toString(), context);
        print(error.toString());
      }
    });
  }

  Future<void> SignUpApi(dynamic data, BuildContext context) async {
    setsignUpLoading(true);
    _myrepo.SignUpApi(data).then((value) {
      setsignUpLoading(false);
      Utils.flushBarSuccessfulMessage("Sign Up Successful", context);
      print("Signup Successful");
      //Navigator.pushNamed(context, RoutesName.home);

      if (kDebugMode) {
        print(
          value.toString(),
        );
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        setsignUpLoading(false);
        Utils.flushBarErrorMessage(error.toString(), context);
        print(error.toString());
      }
    });
  }
}
