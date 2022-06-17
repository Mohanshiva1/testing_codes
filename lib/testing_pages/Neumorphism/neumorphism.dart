//
//
// import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
// import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
//
// class NeumorphismButton extends StatefulWidget {
//   const NeumorphismButton({Key? key}) : super(key: key);
//
//   @override
//   State<NeumorphismButton> createState() => _NeumorphismButtonState();
// }
//
// class _NeumorphismButtonState extends State<NeumorphismButton> {
//   bool isPressed = false;
//
//   @override
//   Widget build(BuildContext context) {
//     final backgroundColor = Color(0xffE7ECEF);
//     Offset distance = isPressed ? Offset(8, 8) : Offset(28, 28);
//     double blur = isPressed ? 5.0 : 30.0;
//
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       body: Center(
//         child: buttons(
//           blur,
//           distance,
//         ),
//       ),
//     );
//   }
//
//   GestureDetector buttons(
//     double blur,
//     Offset distance,
//   ) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isPressed = !isPressed;
//         });
//       },
//       child: Listener(
//         onPointerUp: (_) => setState(() {
//           isPressed = true;
//         }),
//         onPointerDown: (_) => setState(() {
//           isPressed = true;
//         }),
//         child: AnimatedContainer(
//           // height: 200,
//           // width: 200,
//           duration: Duration(milliseconds: 100),
//           decoration: BoxDecoration(
//               color: Color(0xffE7ECEF),
//               borderRadius: BorderRadius.circular(30),
//               boxShadow: [
//                 BoxShadow(
//                   blurRadius: blur,
//                   offset: -distance,
//                   color: Colors.white54,
//                   inset: isPressed,
//                 ),
//                 BoxShadow(
//                   blurRadius: blur,
//                   offset: distance,
//                   color: Color(0xffA7A9AF),
//                   inset: isPressed,
//                   // inset: true,
//                 ),
//               ]),
//           child: SizedBox(
//             height: 200,
//             width: 200,
//             child: Center(
//               child: Text(""),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
