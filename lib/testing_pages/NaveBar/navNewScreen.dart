// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
//
//
// class NavToNewScreen extends StatefulWidget {
//   const NavToNewScreen({Key? key}) : super(key: key);
//
//   @override
//   _NavToNewScreenState createState() => _NavToNewScreenState();
// }
//
// class _NavToNewScreenState extends State<NavToNewScreen> {
//
//   int _selectedIndex = 0;
//
//   // List<Widget> _widgetOptions = <Widget>[
//   //   HomePage(),
//   //   CalendarPage(),
//   //   ProfilePage(),
//   // ];
//   List<GlobalKey<NavigatorState>> _navigatorKeys = [
//     GlobalKey<NavigatorState>(),
//     GlobalKey<NavigatorState>(),
//     GlobalKey<NavigatorState>(),
//     GlobalKey<NavigatorState>(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         final isFirstRouteInCurrentTab =
//         !await _navigatorKeys[_selectedIndex].currentState!.maybePop();
//         return isFirstRouteInCurrentTab;
//       },
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _selectedIndex,
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//               ),
//               backgroundColor: Colors.blue,
//               label: ('HOME'),
//
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.add,
//                 color: Colors.blue,
//               ),
//               label:('CALENDAR'),
//
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.supervised_user_circle,
//                 color: Colors.blue,
//                 size: 36,
//               ),
//               label: ('PROFILE'),
//
//             ),
//           ],
//           onTap: (index) {
//             setState(() {
//               _selectedIndex = index;
//             });
//           },
//         ),
//         body: Stack(
//           children: [
//             _buildOffstageNavigator(0),
//             _buildOffstageNavigator(1),
//             _buildOffstageNavigator(2),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
//     return {
//       '/': (context) {
//         return [
//           HomePage(),
//           CalendarPage(),
//           ProfilePage(),
//         ].elementAt(index);
//       },
//     };
//   }
//
//
//
//   Widget _buildOffstageNavigator(int index) {
//     var routeBuilders = _routeBuilders(context, index);
//
//     return Offstage(
//       offstage: _selectedIndex != index,
//       key: _navigatorKeys[index],
//       child: Navigator(
//         onGenerateRoute: (routeSettings) {
//           return MaterialPageRoute(
//             builder: (context) => routeBuilders[routeSettings.name]!(context),
//           );
//         },
//       ),
//     );
//   }
// }
//
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.lightBlueAccent,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           Container(
//             child: Text(
//               'Screen 1',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20
//               ),
//             ),
//             margin: EdgeInsets.all(16),
//           ),
//           FlatButton(
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(
//                   builder: (context) => Screen2()
//               ));
//             },
//             child: Text('Go to next screen'),
//             color: Colors.white,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class CalendarPage extends StatefulWidget {
//   const CalendarPage({Key? key}) : super(key: key);
//
//   @override
//   _CalendarPageState createState() => _CalendarPageState();
// }
//
// class _CalendarPageState extends State<CalendarPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       child: Center(
//         child: FlatButton(
//           onPressed: (){
//             Navigator.push(context, MaterialPageRoute(
//                 builder: (context) => Screen2()
//             ));
//           },
//           child: Text('Go to next screen'),
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }
//
//
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);
//
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.lightGreenAccent,
//     );
//   }
// }
//
//
// class Screen2 extends StatefulWidget {
//   const Screen2({Key? key}) : super(key: key);
//
//   @override
//   _Screen2State createState() => _Screen2State();
// }
//
// class _Screen2State extends State<Screen2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.lightBlueAccent,
//         alignment: Alignment.center,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               child: Text(
//                 'Screen 2',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ),
//               ),
//               margin: EdgeInsets.all(16),
//             ),
//             FlatButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text('Go back'),
//               color: Colors.white,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
