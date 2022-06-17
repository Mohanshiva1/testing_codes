// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class num1 extends StatefulWidget {
//   const num1({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<num1> createState() => _num1State();
// }
//
// class _num1State extends State<num1> {
//   bool _isElevated = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             setState(() {
//               _isElevated = !_isElevated;
//             });
//           },
//           child: Listener(
//             onPointerMove: (_) => setState(() {
//               _isElevated = false;
//             }),
//             onPointerDown: (_) => setState(() {
//               _isElevated = false;
//             }),
//             onPointerUp: (_) => setState(() {
//               _isElevated = false;
//             }),
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 100),
//               height: 200,
//               width: 200,
//               decoration: BoxDecoration(
//                   color: Colors.grey[300],
//                   borderRadius: BorderRadius.circular(60),
//                   boxShadow: _isElevated
//                       ? [
//                           BoxShadow(
//                             color: Colors.grey[500]!,
//                             offset: Offset(4, 4),
//                             blurRadius: 15,
//                             spreadRadius: 1,
//                           ),
//                           BoxShadow(
//                             color: Colors.white,
//                             offset: Offset(-4, -4),
//                             blurRadius: 15,
//                             spreadRadius: 1,
//                           ),
//                         ]
//                       : [
//                           BoxShadow(
//                             color: Colors.black12,
//                             offset: Offset(0, 0),
//                             blurRadius: 20,
//                           )
//                         ],
//               ),
//               child: Center(child: Text('Neumorphism')),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
