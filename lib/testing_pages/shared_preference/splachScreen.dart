// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:testing_codes/testing_pages/shared_preference/home.dart';
// import 'package:testing_codes/testing_pages/shared_preference/login.dart';
//
//
//
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//    String?
//    finalEmail;
//   @override
//   void initState() {
//     // TODO: implement initState
//     getValidData().whenComplete(()
//     async => Timer(Duration(seconds: 2),()=>
//         // Get.to(finalEmail == null ? Login() : HomePage()),
//       Navigator.push(context, MaterialPageRoute(builder: (context)=> finalEmail == null ? Login() : HomePage()))
//     ));
//     super.initState();
//     print(finalEmail);
//   }
//
//   Future getValidData() async {
//     final SharedPreferences sharedPreferences = SharedPreferences.getInstance() as SharedPreferences;
//     var obtainedEmail = sharedPreferences.getString("Email");
//     setState(() {
//       finalEmail = obtainedEmail!;
//     });
//
//   }
//
//
//   @override
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             CircleAvatar(
//               child: Icon(Icons.local_activity),
//               radius: 50.0,
//             ),
//             Padding(padding: EdgeInsets.only(top: 8.0),
//               child: CircularProgressIndicator(
//                 backgroundColor: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
