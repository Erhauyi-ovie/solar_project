import 'package:flutter/material.dart';
import 'package:solar_project/screens/bottomTabBar/FabTabs.dart';
import 'package:solar_project/screens/login/login_screen.dart';
import 'package:solar_project/screens/profile/profile.dart';
import 'package:solar_project/screens/report/report.dart';
import 'package:solar_project/screens/settings/settings.dart';

class Sidemenu extends StatefulWidget {
  @override
  State<Sidemenu> createState() => _SidemenuState();
}

class _SidemenuState extends State<Sidemenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(39, 167, 231, 1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(
                'PRICE',
                style: TextStyle(color: Color.fromRGBO(255, 255, 0, 1), fontSize: 25), // Yellow text
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(1.0),
                  bottomRight: Radius.circular(1.0),
                ),
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/solars.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Icon(Icons.home_outlined),
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => FabTabs(selectedIndex: 0))),
              },
            ),
            ListTile(
              leading: IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Icon(Icons.visibility_outlined),
              ),
              title: Text(
                'Active',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => FabTabs(selectedIndex: 1))),
              },
            ),
            ListTile(
              leading: IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Icon(Icons.camera_alt_outlined),
              ),
              title: Text(
                'Surveillance',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FabTabs(selectedIndex: 3))),
              },
            ),
            ListTile(
              leading: IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Icon(Icons.analytics_outlined),
              ),
              title: Text(
                'Analytics',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FabTabs(selectedIndex: 2))),
              },
            ),
            ListTile(
              leading: IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Icon(Icons.description_outlined),
              ),
              title: Text(
                'Report',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Report())),
              },
            ),
            ListTile(
              leading: IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Icon(Icons.settings_outlined),
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Settings())),
              },
            ),
            ListTile(
              leading: IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Icon(Icons.person_outline),
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Profile())),
              },
            ),
            ListTile(
              leading: IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Icon(Icons.login_outlined),
              ),
              title: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login())),
              },
            ),
          ],
        ),
      ),
    );
  }
}
