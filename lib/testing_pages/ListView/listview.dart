// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class DemoListView extends StatefulWidget {
//   const DemoListView({Key? key}) : super(key: key);
//
//   @override
//   _DemoListViewState createState() => _DemoListViewState();
// }
//
// class _DemoListViewState extends State<DemoListView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               margin: EdgeInsets.all(50),
//               child: ListView(
//                 scrollDirection: Axis.vertical,
//                 shrinkWrap: true,
//                 children: [
//                   Column(
//                     children: [
//                       ListTile(
//                         contentPadding: EdgeInsets.only(left: 30, right: 30),
//                         tileColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20.0)),
//                         title: Text("il"),
//                         subtitle: Text("til"),
//                         trailing: Icon(Icons.brightness_1),
//                         leading: Icon(Icons.brightness_1),
//                       ),
//                       Divider(
//                         height: 2,
//                         color: Colors.black,
//                         indent: 50,
//                         endIndent: 50,
//                         thickness: 2,
//                       ),
//                       ListTile(
//                         contentPadding: EdgeInsets.only(left: 30, right: 30),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20.0)),
//                         tileColor: Colors.white,
//                         title: Text("til"),
//                         subtitle: Text("til"),
//                         trailing: Icon(Icons.brightness_1),
//                         leading: Icon(Icons.brightness_1),
//                       ),
//
//                     ],
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
