import 'package:flutter/material.dart';
import 'package:viewbooster/views/Tabs/pointsTab/PointsTabScreans/BuyPoints.dart';
import 'package:viewbooster/views/Tabs/pointsTab/PointsTabScreans/ViewMemberShip.dart';

import '../../../resources/components/AppBar.dart';

class Points_Tab extends StatefulWidget {
  const Points_Tab({super.key});

  @override
  State<Points_Tab> createState() => _PointsState();
}

class _PointsState extends State<Points_Tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 140,
                        width: 300,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0,
                                blurRadius: 0.1,
                                offset: Offset(0, 0),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                                height: 60,
                                child: Image.asset("assets/images/cart2.png")),
                            SizedBox(
                              height: 13,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BuyPoints()),
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 230,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "BUY POINTS",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(height: 0),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 140,
                        width: 300,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0,
                                blurRadius: 0.1,
                                offset: Offset(0, 1),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                                height: 60,
                                child: Image.asset("assets/images/crown.png")),
                            SizedBox(
                              height: 13,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ViewMemberShip()),
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 230,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "VIP MEMBERSHIP",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 140,
                        width: 300,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: Offset(0, 1),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                                height: 60,
                                child:
                                    Image.asset("assets/images/feedback.png")),
                            SizedBox(
                              height: 13,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BuyPoints()),
                                );
                              },
                              child: InkWell(
                                onTap: () {
                                  // infoAlertCustom();
                                },
                                child: Container(
                                  height: 40,
                                  width: 230,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "LEAVE FEEDBACK",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                          ],
                        )),
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}

//   void infoAlertCustom() {
//     Dialog errorDialog = Dialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
//       //this right here
//       child: Container(
//         height: 300.0,
//         width: 300.0,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text.rich(
//                 TextSpan(
//                   children: [
//                     TextSpan(
//                       text: 'Employee ID:',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     TextSpan(text: ' infoEmpId!'),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text.rich(
//                 TextSpan(
//                   children: [
//                     TextSpan(
//                       text: 'Division Name: ',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     TextSpan(text: ' infoEmpDvName!'),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text.rich(
//                 TextSpan(
//                   children: [
//                     TextSpan(
//                       text: 'Designation Level: ',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     TextSpan(text: 'infoEmpDesignLvl'),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(padding: EdgeInsets.only(top: 50.0)),
//             TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text(
//                   'Close!',
//                   style: TextStyle(color: Colors.red, fontSize: 16.0),
//                 ))
//           ],
//         ),
//       ),
//     );
//     showDialog(
//         context: context, builder: (BuildContext context) => errorDialog);
//   }
// }

