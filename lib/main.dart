import 'package:flutter/material.dart';

import 'package:testing_codes/testing_pages/confetti%20file/confetti.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: ConfettiFile(),
    );
  }
}

