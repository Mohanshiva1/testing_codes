// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
//
// class CircleIndicator extends StatefulWidget {
//   const CircleIndicator({Key? key}) : super(key: key);
//
//   @override
//   _CircleIndicatorState createState() => _CircleIndicatorState();
// }
//
// class _CircleIndicatorState extends State<CircleIndicator> {
//
//   double precent = 100;
//
//   late Timer timer;
//
//   startTimer(){
//     timer = Timer.periodic(Duration(seconds: 5), (_) {
//       setState(() {
//         precent -= 1;
//         if(precent == 0){
//           timer.cancel();
//           precent = 0.0;
//         }
//       });
//     });
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     startTimer();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff1542bf),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Center(
//               child: Container(
//                 margin: EdgeInsets.only(top: 500),
//                 child: Column(
//                   children: [
//                     CircularPercentIndicator(
//                       circularStrokeCap: CircularStrokeCap.round,
//                       radius: 100,
//                       percent: precent/100,
//                       animation: true,
//                       animateFromLastPercent: true,
//                       lineWidth: 20,
//                       progressColor: Colors.black,
//                       backgroundColor: Colors.white,
//                       center: Text("${precent.toStringAsFixed(0)}"),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
