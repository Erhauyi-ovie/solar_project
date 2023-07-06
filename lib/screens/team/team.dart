// import 'package:flutter/material.dart';
// // import 'package:solar_proj/pages/active_areas.dart';
// // import 'package:solar_proj/pages/analytics_page.dart';
// // import 'package:solar_proj/pages/profile_page.dart';
// // import 'package:solar_proj/pages/report_page.dart';
// // import 'package:solar_proj/pages/settings_page.dart';
// // import 'package:solar_proj/pages/surveilance_page.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   int index = 0;
//   final screens = [
//
//
//     // ProfilePage(),
//     // ActiveAreas(),
//     // SurveilancePage(),
//     // AnalyticsPage(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[index],
//       bottomNavigationBar: NavigationBarTheme(
//         data: NavigationBarThemeData(
//           indicatorColor: Colors.blue,
//           labelTextStyle: MaterialStateProperty.all(
//             TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//           ),
//         ),
//         child: NavigationBar(
//           height: 80,
//           backgroundColor: Colors.lightGreen,
//           selectedIndex: index,
//           onDestinationSelected: (index) =>
//               setState(()=> this.index = index),
//           destinations: [
//             NavigationDestination(icon:
//             Icon(Icons.home_outlined),
//               label: 'Home',),
//             NavigationDestination(icon:
//             Icon(Icons.visibility_outlined),
//               label: 'Active Areas',),
//             NavigationDestination(icon:
//             Icon(Icons.camera_alt_outlined),
//               label: 'Surveillance',),
//             NavigationDestination(icon:
//             Icon(Icons.analytics_outlined),
//               label: 'Analytics',),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class MyDrawer extends StatelessWidget {
//   const MyDrawer({Key? key}) : super(key: key);
//
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
//                 MaterialPageRoute(builder: (context) => const ProfilePage()),
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
//                 MaterialPageRoute(builder: (context) => const SurveilancePage()),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.insert_chart_outlined, color: Colors.white),
//             title: const Text('Analytics', style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Navigator.pop(context);
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => const AnalyticsPage()),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.description_outlined, color: Colors.white),
//             title: const Text('Report', style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Navigator.pop(context);
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => const ReportPage()),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.settings_outlined, color: Colors.white),
//             title: const Text('Settings', style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Navigator.pop(context);
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => const SettingsPage()),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
