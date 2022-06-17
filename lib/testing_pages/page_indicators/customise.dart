// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// class Testing extends StatefulWidget {
//   const Testing({Key? key}) : super(key: key);
//
//   @override
//   _TestingState createState() => _TestingState();
// }
//
// class _TestingState extends State<Testing> {
//   final controller = PageController(keepPage: true);
//
//
//   bool a = false;
//
//   @override
//
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:Color(0xFF37474F),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 400,),
//               GestureDetector(
//                 onTap: (){
//                   setState(() {
//                     a = !a;
//                   });
//                 },
//                 child: Container(
//                   height: 200,
//                   width: 500,
//                   decoration: BoxDecoration(
//                     color: a != false ? Color(0xFF00BFA5): Colors.teal,
//                     borderRadius: BorderRadius.circular(50)
//                   ),
//
//                   child: Column(
//                     children: [
//                       Center(
//                         child: a != false ? Icon(Icons.light_rounded,size: 80,): Icon(Icons.light_outlined,size: 80,),
//                       ),
//                       Center(
//                         child: Text(
//                           "${a != false ? "ON": "OFF"}",style: TextStyle(
//                           fontWeight: FontWeight.w900,
//                           fontSize: 30
//                         ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 40,),
//               Container(
//                 child: SmoothPageIndicator(
//                   effect: ExpandingDotsEffect(
//                       dotHeight: 8,
//                       dotWidth: 15,
//                       activeDotColor: Colors.grey.shade300,
//                       dotColor: Colors.grey.shade300
//                   ),
//                   count: 3,
//                   controller: controller,
//                 ),
//               ),
//               SizedBox(height: 30,),
//               Container(
//                 height: 200,
//                 child:  PageView(
//                   controller: controller,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.all(30),
//                       height: 100,
//                       width: 500,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color: Color(0xFF00ACC1),
//                       ),
//
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(30),
//                       height: 100,
//                       width: 500,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color:  Color(0xFFC2185B),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(30),
//                       height: 100,
//                       width: 500,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color: Color(0xFF00ACC1),
//                       ),
//                     ),
//                   ],
//                 )
//
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
