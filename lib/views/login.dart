import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:viewbooster/resources/components/SignUpButton.dart';
import 'package:viewbooster/views/MainScrean.dart';
import 'package:viewbooster/inv/login_view.dart';
import '../../resources/components/round_button.dart';
import '../../utils/routes/rotes_named.dart';
import '../../utils/utils.dart';
import '../../view_model/auth_viewmodel.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  ValueNotifier<bool> _obsecuretext = ValueNotifier<bool>(true);
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool loading = false;

  @override
  void dispose() {
    _obsecuretext.dispose();
    EmailController.dispose();
    PasswordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    // TODO: implement dispose
  }

  Widget build(BuildContext context) {
    final authViewMode = Provider.of<AuthViewModel>(context);
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Center(child: Text("Sign Up Screen")),
      // ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
              ),
              Image.asset("assets/images/logo2.png"),
              SignUpButton(
                  title: "Sign Up",
                  loading: loading,
                  onPress: () {
                    signinwithGoogle();
                  }),
            ]),
      ),
    );
  }

  signinwithGoogle() async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    print(userCredential.user?.displayName);
    Navigator.push(context, MaterialPageRoute(builder: (context) => Main()));
  }
}
