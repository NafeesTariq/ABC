// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:viewbooster/views/MainScrean.dart';
// import 'package:viewbooster/views/login_view.dart';
// import '../../resources/components/round_button.dart';
// import '../../utils/routes/rotes_named.dart';
// import '../../utils/utils.dart';
// import '../../view_model/auth_viewmodel.dart';
// // import 'package:firebase_auth/firebase_auth.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<SignUp> {
//   ValueNotifier<bool> _obsecuretext = ValueNotifier<bool>(true);
//   TextEditingController EmailController = TextEditingController();
//   TextEditingController PasswordController = TextEditingController();
//   FocusNode emailFocusNode = FocusNode();
//   FocusNode passwordFocusNode = FocusNode();
//   FirebaseAuth _auth = FirebaseAuth.instance;
//   bool loading = false;

//   @override
//   void dispose() {
//     _obsecuretext.dispose();
//     EmailController.dispose();
//     PasswordController.dispose();
//     emailFocusNode.dispose();
//     passwordFocusNode.dispose();
//     // TODO: implement dispose
//   }

//   Widget build(BuildContext context) {
//     final authViewMode = Provider.of<AuthViewModel>(context);
//     final height = MediaQuery.of(context).size.height * 1;
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Center(child: Text("Sign Up Screen")),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(10),
//         child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextFormField(
//                 focusNode: emailFocusNode,
//                 onFieldSubmitted: (value) {
//                   Utils.FieldFocusChang(
//                       context, emailFocusNode, passwordFocusNode);
//                 },
//                 keyboardType: TextInputType.emailAddress,
//                 controller: EmailController,
//                 decoration: const InputDecoration(
//                   label: Text("Email"),
//                   hintText: " Enter Email ",
//                   prefixIcon: Icon(Icons.email),
//                 ),
//               ),
//               ValueListenableBuilder(
//                 valueListenable: _obsecuretext,
//                 builder: (context, value, child) {
//                   return TextFormField(
//                     focusNode: passwordFocusNode,
//                     controller: PasswordController,
//                     obscureText: _obsecuretext.value,
//                     decoration: InputDecoration(
//                         label: Text("Password"),
//                         hintText: "Email",
//                         prefixIcon: Icon(Icons.lock),
//                         suffix: InkWell(
//                             onTap: () {
//                               _obsecuretext.value = !_obsecuretext.value;
//                             },
//                             child: _obsecuretext.value
//                                 ? Icon(Icons.visibility_off_outlined)
//                                 : Icon(Icons.visibility))),
//                   );
//                 },
//               ),
//               SizedBox(
//                 height: height * .095,
//               ),
//               RoundButton(
//                   title: "Sign Up",
//                   loading: loading,
//                   onPress: () {
//                     if (EmailController.text.isEmpty) {
//                       Utils.flushBarErrorMessage("Please Enter Email", context);
//                     } else if (PasswordController.text.isEmpty) {
//                       Utils.flushBarErrorMessage(
//                           "Please Enter Password", context);
//                     } else if (PasswordController.text.length < 6) {
//                       Utils.flushBarErrorMessage(
//                           "Please Enter 6 Digit Password", context);
//                     } else {
//                       // authViewMode.signup_auth(
//                       //     EmailController, PasswordController, context);
//                       //     Utils.flushBarSuccessfulMessage("Sign Up Successful", context);
//                       setState(() {
//                         loading = true;
//                       });
//                       _auth
//                           .createUserWithEmailAndPassword(
//                               email: EmailController.text.toString(),
//                               password: PasswordController.text.toString())
//                           .then((value) {
//                         setState(() {
//                           loading = false;
//                         });
//                       }).onError((error, stackTrace) {
//                         Utils.toastMessage(error.toString());
//                         setState(() {
//                           loading = false;
//                         });
//                       });
//                       // Navigator.push(context,
//                       //     MaterialPageRoute(builder: (context) => Main()));
//                     }
//                   }),
//               InkWell(
//                   onTap: () {
//                     Navigator.of(context, rootNavigator: true)
//                         .pushNamed("/SignUp");
//                     // Navigator.pushNamed(context, RoutesName.login);
//                   },
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text("Already have an account.... "),
//                         TextButton(
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => LoginScreen()));
//                             },
//                             child: Text("Sign In")),
//                       ])),
//             ]),
//       ),
//     );
//   }
// }
