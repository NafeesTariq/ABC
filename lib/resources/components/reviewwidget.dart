
// import 'package:flutter/material.dart';

// import 'dart:io' show Platform;
// import 'package:flutter/foundation.dart';

// // The existing imports
// // !! Keep your existing impots here !!

// /// main is entry point of Flutter application
// // void main() {
// // //   // Desktop platforms aren't a valid platform.
// // //   if (!kIsWeb) _setTargetPlatformForDesktop();
// // //   return runApp(Review());
// // // }

// // // /// If the current platform is desktop, override the default platform to
// // // /// a supported platform (iOS for macOS, Android for Linux and Windows).
// // // /// Otherwise, do nothing.
// // // void _setTargetPlatformForDesktop() {
// // //   TargetPlatform? targetPlatform;
// // //   if (Platform.isMacOS) {
// // //     targetPlatform = TargetPlatform.iOS;
// // //   } else if (Platform.isLinux || Platform.isWindows) {
// // //     targetPlatform = TargetPlatform.android;
// // //   }
// // //   if (targetPlatform != null) {
// // //     debugDefaultTargetPlatformOverride = targetPlatform;
// // //   }
// // // }
// void _setTargetPlatformForDesktop() {
//   TargetPlatform? targetPlatform;
//   if (Platform.isMacOS) {
//     targetPlatform = TargetPlatform.iOS;
//   } else if (Platform.isLinux || Platform.isWindows) {
//     targetPlatform = TargetPlatform.android;
//   }
//   if (targetPlatform != null) {
//     debugDefaultTargetPlatformOverride = targetPlatform;
//   }
// }

// class Review extends StatefulWidget {
//   @override
//   _MyAppState createState() => new _MyAppState();
// }

// class _MyAppState extends State<Review> {
//   @override
//   void initState() {
//     super.initState();
//     AppReview.getAppID.then(log);
//   }

//   String appID = "";
//   String output = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(title: const Text('App Review')),
//       body: new SingleChildScrollView(
//         child: new ListBody(
//           children: <Widget>[
//             new Container(
//               height: 40.0,
//             ),
//             new ListTile(
//               leading: const Icon(Icons.info),
//               title: const Text('App ID'),
//               subtitle: new Text(appID),
//               onTap: () {
//                 AppReview.getAppID.then(log);
//               },
//             ),
//             const Divider(height: 20.0),
//             new ListTile(
//               leading: const Icon(
//                 Icons.shop,
//               ),
//               title: const Text('View Store Page'),
//               onTap: () {
//                 AppReview.storeListing.then(log);
//               },
//             ),
//             const Divider(height: 20.0),
//             new ListTile(
//               leading: const Icon(
//                 Icons.star,
//               ),
//               title: const Text('Request Review'),
//               onTap: () {
//                 AppReview.requestReview.then(log);
//               },
//             ),
//             const Divider(height: 20.0),
//             new ListTile(
//               leading: const Icon(
//                 Icons.note_add,
//               ),
//               title: const Text('Write a New Review'),
//               onTap: () {
//                 AppReview.writeReview.then(log);
//               },
//             ),
//             const Divider(height: 20.0),
//             new ListTile(title: new Text(output)),
//           ],
//         ),
//       ),
//     );
//   }

//   void log(String? message) {
//     if (message != null) {
//       setState(() {
//         output = message;
//       });
//       print(message);
//     }
//   }
// }
