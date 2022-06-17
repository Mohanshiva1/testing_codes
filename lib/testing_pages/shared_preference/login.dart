// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:testing_codes/testing_pages/shared_preference/home.dart';
//
// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);
//
//   @override
//   _LoginState createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 hintText: "Enter Email"
//               ),
//             ),
//             SizedBox(height: 20,),
//             TextField(
//               controller: passwordController,
//
//             ),
//             SizedBox(height: 30,),
//             MaterialButton(
//               color: Colors.lightBlueAccent,
//
//                 onPressed: () async{
//                   final SharedPreferences sharedpreferences = await SharedPreferences.getInstance();
//                   sharedpreferences.setString("Email", emailController.text);
//                   // Get.to( HomePage());
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
//                 },
//                 child: Center(
//                   child: Text(
//                     "LogIn"
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
