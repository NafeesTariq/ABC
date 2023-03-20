// import 'package:flutter/material.dart';
// import '../color.dart';

// class SignUpButton extends StatelessWidget {
//   //params
//   final String title;
//   bool loading;
//   final VoidCallback onPress;

//   SignUpButton(
//       {Key? key,
//       required this.title,
//       this.loading = false,
//       required this.onPress})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPress,
//       child: Container(
//           height: 50,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Center(
//               child: loading
//                   ? CircularProgressIndicator(
//                       strokeWidth: 3, color: Colors.white)
//                   : Text(
//                       "SignIn With Google",
//                       style: TextStyle(color: Colors.white),
//                     ))),
//     );
//   }
// }
