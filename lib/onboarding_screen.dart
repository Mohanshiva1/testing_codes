// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:whatsapp_luncher/home_screen.dart';
//
// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({Key? key}) : super(key: key);
//
//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }
//
// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   PageController _controller = PageController();
//
//   bool lastpage = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView(
//             controller: _controller,
//             onPageChanged: (index) {
//               setState(() {
//                 lastpage = (index == 1);
//               });
//             },
//             children: [
//               Container(
//                 color: Colors.blue,
//                 child: Center(
//                   child: Column(
//                     children: [Text("Flutter Introduction Screen")],
//                   ),
//                 ),
//               ),
//               Container(
//                 color: Colors.amber,
//               ),
//             ],
//           ),
//
//           //.....dot indicators....................
//           Container(
//             alignment: Alignment(0, 0.75),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     _controller.jumpToPage(1);
//                   },
//                   child: Text("Skip"),
//                 ),
//                 SmoothPageIndicator(controller: _controller, count: 2),
//                 lastpage
//                     ? GestureDetector(
//                         onTap: () {
//                           setState(() async {
//                             final prefs = await SharedPreferences.getInstance();
//                             prefs.setBool('showHome', true);
//
//                             (Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => MyHomePage())));
//                           });
//                         },
//                         child: Text("${lastpage ? "Done" : "Next"}"),
//                       )
//                     : GestureDetector(
//                         onTap: () {
//                           setState(() {});
//                         },
//                         child: Text("${lastpage ? "Done" : "Next"}"),
//                       )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
