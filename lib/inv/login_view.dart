// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// // import 'package:mvvm_project/resources/components/round_button.dart';
// // import 'package:mvvm_project/utils/routes/rotes_named.dart';
// // import 'package:mvvm_project/view_model/auth_viewmodel.dart';
// // import 'package:mvvm_project/views/Screens/HomeScreen_view.dart';
// import 'package:provider/provider.dart';
// import 'package:viewbooster/resources/components/round_button.dart';
// import 'package:viewbooster/utils/routes/rotes_named.dart';
// import 'package:viewbooster/view_model/auth_viewmodel.dart';
// import 'package:viewbooster/views/SignUpGoogle.dart';
// import 'package:viewbooster/views/Signup_view.dart';

// import '../../utils/utils.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   ValueNotifier<bool> _obsecuretext = ValueNotifier<bool>(true);
//   TextEditingController EmailController = TextEditingController();
//   TextEditingController PasswordController = TextEditingController();
//   FocusNode emailFocusNode = FocusNode();
//   FocusNode passwordFocusNode = FocusNode();
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
//     return WillPopScope(
//       onWillPop: () async {
//         SystemNavigator.pop();
//         return true;
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           title: Center(child: Text("Login Screen")),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(10),
//           child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextFormField(
//                   focusNode: emailFocusNode,
//                   onFieldSubmitted: (value) {
//                     Utils.FieldFocusChang(
//                         context, emailFocusNode, passwordFocusNode);
//                   },
//                   keyboardType: TextInputType.emailAddress,
//                   controller: EmailController,
//                   decoration: const InputDecoration(
//                     label: Text("Email"),
//                     hintText: " Enter Email ",
//                     prefixIcon: Icon(Icons.email),
//                   ),
//                 ),
//                 ValueListenableBuilder(
//                   valueListenable: _obsecuretext,
//                   builder: (context, value, child) {
//                     return TextFormField(
//                       focusNode: passwordFocusNode,
//                       controller: PasswordController,
//                       obscureText: _obsecuretext.value,
//                       decoration: InputDecoration(
//                           label: Text("Password"),
//                           hintText: "Password",
//                           prefixIcon: Icon(Icons.lock),
//                           suffix: InkWell(
//                               onTap: () {
//                                 _obsecuretext.value = !_obsecuretext.value;
//                               },
//                               child: _obsecuretext.value
//                                   ? Icon(Icons.visibility_off_outlined)
//                                   : Icon(Icons.visibility))),
//                     );
//                   },
//                 ),
//                 SizedBox(
//                   height: height * .095,
//                 ),
//                 RoundButton(
//                     title: "Login",
//                     loading: authViewMode.loading,
//                     onPress: () {
//                       if (EmailController.text.isEmpty) {
//                         Utils.flushBarErrorMessage(
//                             "Please Enter Email", context);
//                       } else if (PasswordController.text.isEmpty) {
//                         Utils.flushBarErrorMessage(
//                             "Please Enter Password", context);
//                       } else if (PasswordController.text.length < 6) {
//                         Utils.flushBarErrorMessage(
//                             "Please Enter 6 Digit Password", context);
//                       } else {
//                         Map data = {
//                           'email': EmailController.text.toString(),
//                           'password': PasswordController.text.toString(),
//                         };
//                         authViewMode.loginApi(data, context);
//                         print("Api hit");
//                       }
//                     }),
//                 SizedBox(height: height * 0.02),
//                 Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                   Text("Dont have an account?"),
//                   TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => SignUpGoogle()));
//                       },
//                       child: Text("Sign Up")),
//                 ]),
//               ]),
//         ),
//       ),
//     );
//   }
// }
