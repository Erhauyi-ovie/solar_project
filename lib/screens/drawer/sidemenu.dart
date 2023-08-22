import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_project/screens/bottomTabBar/FabTabs.dart';
import 'package:solar_project/screens/login/login_page.dart';
import 'package:solar_project/screens/login/signup.dart';
import 'package:solar_project/screens/profile/profile.dart';
import 'package:solar_project/screens/report/report.dart';
import 'package:solar_project/screens/settings/settings.dart';

class Sidemenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(39, 167, 231, 1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 250,
              child: DrawerHeader(
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
                    image: AssetImage('assets/images/solar.jpg'),
                  ),
                ),
              ),
            ),
            buildDrawerItem("Home", Icons.home_outlined, () {
              Get.offAll(() => FabTabs(selectedIndex: 0));
            }),
            buildDrawerItem("Active", Icons.visibility_outlined, () {
              Get.offAll(() => FabTabs(selectedIndex: 1));
            }),
            buildDrawerItem("Surveillance", Icons.camera_alt_outlined, () {
              Get.offAll(() => FabTabs(selectedIndex: 3));
            }),
            buildDrawerItem("Analytics", Icons.analytics_outlined, () {
              Get.offAll(() => FabTabs(selectedIndex: 2));
            }),
            buildDrawerItem("Report", Icons.description_outlined, () {
              Get.to(() => Report());
            }),
            buildDrawerItem("Settings", Icons.settings_outlined, () {
              Get.to(() => Settings());
            }),
            buildDrawerItem("Profile", Icons.person_outline, () {
              Get.to(() => Profile());
            }),
            buildDrawerItem("Signup", Icons.login_outlined, () {
              Get.to(() => SignupPage());
            }),
            buildDrawerItem("Login", Icons.login_outlined, () {
              Get.to(() => LoginPage());
            }),
          ],
        ),
      ),
    );
  }

  ListTile buildDrawerItem(String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: IconTheme(
        data: IconThemeData(color: Colors.white),
        child: Icon(icon),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onTap: onTap,
    );
  }
}
