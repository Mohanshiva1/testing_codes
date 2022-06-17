import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfettiFile extends StatefulWidget {
  const ConfettiFile({Key? key}) : super(key: key);

  @override
  State<ConfettiFile> createState() => _ConfettiFileState();
}

class _ConfettiFileState extends State<ConfettiFile> {
   ConfettiController? controller;

  @override
  void initState() {
    controller = ConfettiController(duration: Duration(milliseconds: 50));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
