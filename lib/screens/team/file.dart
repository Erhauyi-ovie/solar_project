// import 'package:flutter/material.dart';
// import 'package:solar_project/screens/activeAreas/activeAreas.dart';
// import 'package:solar_project/screens/analytics/analytics.dart';
// import 'package:solar_project/screens/bottomTabBar/FabTabs.dart';
// import 'package:solar_project/screens/profile/profile.dart';
// import 'package:solar_project/screens/surveillance/surveillance.dart';
// import 'package:solar_project/screens/report/report.dart';
// import 'package:solar_project/screens/settings/settings.dart';
// import 'package:solar_project/screens/profile/profile.dart';
//
//
// class Sidemenu extends StatefulWidget {
//
//
//   @override
//   State<Sidemenu> createState() => _SidemenuState();
// }
//
// class _SidemenuState extends State<Sidemenu> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Drawer'),
//         backgroundColor: Colors.blue,
//       ),
//       drawer: const NavigationDrawer(),
//     );
//   }
// }
//
// class NavigationDrawer extends StatelessWidget {
//   const NavigationDrawer({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: Colors.teal[700],
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             const HeaderWidget(),
//             MenuItemsWidget(),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class HeaderWidget extends StatelessWidget {
//   const HeaderWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(
//         top: 5,
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(
//           topRight: Radius.circular(20.0),
//           bottomRight: Radius.circular(20.0),
//         ),
//       ),
//       child: Stack(
//         children: [
//           Container(
//             width: 310,
//             height: 200,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("assets/images/solars.jpg"),
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           Positioned(
//             top: 1,
//             right: 5,
//             child: IconButton(
//               icon: Icon(Icons.cancel_outlined, color: Colors.white),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class MenuItemsWidget extends StatelessWidget {
//   const MenuItemsWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(24),
//       child: Wrap(
//         runSpacing: 16,
//         children: <Widget>[
//           ListTile(
//             leading: const Icon(Icons.home_outlined, color: Colors.white),
//             title: const Text('Home', style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(builder: (context) => const ActiveAreas()),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.person_outline, color: Colors.white),
//             title: const Text('Profile', style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Navigator.pop(context);
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => const Profile()),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.visibility_outlined, color: Colors.white),
//             title: const Text('Active Areas', style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Navigator.pop(context);
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => const ActiveAreas()),
//               );
//             },
//           ),
//           const Divider(color: Colors.black),
//           ListTile(
//             leading: const Icon(Icons.camera_alt_outlined, color: Colors.white),
//             title: const Text('Surveillance', style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Navigator.pop(context);
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => const Surveillance()),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.insert_chart_outlined, color: Colors.white),
//             title: const Text('Analytics', style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Navigator.pop(context);
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => const Analytics()),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.description_outlined, color: Colors.white),
//             title: const Text('Report', style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Navigator.pop(context);
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => const Report()),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.settings_outlined, color: Colors.white),
//             title: const Text('Settings', style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Navigator.pop(context);
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => const Settings()),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// /*
// return Drawer(
// backgroundColor: Colors.pinkAccent,
// child: ListView(
// padding: EdgeInsets.zero,
// children: [
// DrawerHeader(child:
// Text('PRICE', style: TextStyle(color: Colors.amberAccent, fontSize: 25),),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.only(
// bottomLeft: Radius.circular(1.0),
// bottomRight: Radius.circular(1.0),
// ),
// color: Colors.white,
// image: DecorationImage(
// fit: BoxFit.fill,image: AssetImage('assets/images/solars.jpg')
// )
// ),
// ),
// ListTile(
// leading: Icon(Icons.home_outlined),
// title: Text('Home'),
// onTap: () => {
// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabTabs(selectedIndex:0)))
// },
// ),
// ListTile(
// leading: Icon(Icons.camera_alt_outlined),
// title: Text('Surveillance'),
// onTap: () => {
// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabTabs(selectedIndex:1)))
// },
// ),
// ListTile(
// leading: Icon(Icons.analytics_outlined),
// title: Text('Analytics'),
// onTap: () => {
// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabTabs(selectedIndex:2)))
// },
// ),
// ListTile(
// leading: Icon(Icons.visibility_outlined),
// title: Text('Active'),
// onTap: () => {
// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabTabs(selectedIndex:3)))
// },
// ),
// ListTile(
// leading: Icon(Icons.description_outlined),
// title: Text('Report'),
// onTap: () => {
// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabTabs(selectedIndex:3)))
// },
// ),
// ListTile(
// leading: Icon(Icons.settings_outlined),
// title: Text('Settings'),
// onTap: () => {
// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabTabs(selectedIndex:3)))
// },
// ),
// ListTile(
// leading: Icon(Icons.person_outline),
// title: Text('Person'),
// onTap: () => {
// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabTabs(selectedIndex:3)))
// },
// ),
// ],
// ),
// );*/
