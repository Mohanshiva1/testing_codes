// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class SwipePage extends StatefulWidget {
//   const SwipePage({Key? key}) : super(key: key);
//
//   @override
//   _SwipePageState createState() => _SwipePageState();
// }
//
// class _SwipePageState extends State<SwipePage> {
//   int index = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         children: [
//           FirstPage(),
//           SecondPage(),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: index,
//         onTap: (index) {
//           setState(() {
//             this.index = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//             activeIcon: Icon(Icons.home),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Devices',
//             activeIcon: Icon(Icons.home),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class FirstPage extends StatelessWidget {
//   const FirstPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               Text("first page"),
//               ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => ThirdPage()));
//                   },
//                   child: null)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class SecondPage extends StatelessWidget {
//   const SecondPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Text("second page"),
//         ),
//       ),
//     );
//   }
// }
//
// class ThirdPage extends StatelessWidget {
//   const ThirdPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Text("Third page"),
//         ),
//       ),
//     );
//   }
// }
