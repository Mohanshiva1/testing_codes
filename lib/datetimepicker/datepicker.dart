// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:testing_codes/datetimepicker/utils.dart';
//
// class DatePicker extends StatefulWidget {
//   const DatePicker({Key? key}) : super(key: key);
//
//   @override
//   State<DatePicker> createState() => _DatePickerState();
// }
//
// class _DatePickerState extends State<DatePicker> {
//   DateTime dateTime = DateTime.now();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () => Utils.showSheet(
//                 context,
//                 child: buildDatePicker(),
//                 onClicked: () {
//                   final value = DateFormat('yyyy/MM/dd').format(dateTime);
//                   Utils.showSnackBar(context, 'Selected "$value"');
//                   Navigator.pop(context);
//                 },
//               ), child: Text("select"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//    buildDatePicker() =>SizedBox(
//      height: 180,
//      child: CupertinoDatePicker(
//        maximumYear: 2050,
//        minimumYear: 2010,
//        initialDateTime: dateTime,
//          mode: CupertinoDatePickerMode.date,
//          onDateTimeChanged: (dateTime)=>
//              setState(() {
//                this.dateTime = dateTime;
//              }),
//      ),
//    );
// }
//
//
