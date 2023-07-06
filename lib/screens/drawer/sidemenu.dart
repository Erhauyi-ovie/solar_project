import 'package:flutter/material.dart';
import 'package:solar_project/screens/bottomTabBar/FabTabs.dart';
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
      backgroundColor: Colors.teal[700],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(child:
          Text('PRICE', style: TextStyle(color: Colors.amberAccent, fontSize: 25),),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(1.0),
                bottomRight: Radius.circular(1.0),
              ),
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.fill,image: AssetImage('assets/images/solars.jpg')
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined, color: Colors.white,),
            title: Text('Home', style: TextStyle(color: Colors.white),),
            onTap: () => {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabTabs(selectedIndex:0)))
            },
          ),
          ListTile(
            leading: Icon(Icons.camera_alt_outlined, color: Colors.white,),
            title: Text('Surveillance', style: TextStyle(color: Colors.white),),
            onTap: () => {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabTabs(selectedIndex:1)))
            },
          ),
          ListTile(
            leading: Icon(Icons.visibility_outlined, color: Colors.white,),
            title: Text('Active', style: TextStyle(color: Colors.white),),
            onTap: () => {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabTabs(selectedIndex:3)))
            },
          ),
          ListTile(
            leading: Icon(Icons.analytics_outlined, color: Colors.white,),
            title: Text('Analytics', style: TextStyle(color: Colors.white),),
            onTap: () => {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabTabs(selectedIndex:2)))
            },
          ),

          ListTile(
            leading: Icon(Icons.description_outlined, color: Colors.white,),
            title: Text('Report', style: TextStyle(color: Colors.white),),
            onTap: () => {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Report()))
            },
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined, color: Colors.white,),
            title: Text('Settings', style: TextStyle(color: Colors.white),),
            onTap: () => {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Settings()))
            },
          ),
          ListTile(
            leading: Icon(Icons.person_outline, color: Colors.white,),
            title: Text('Profile', style: TextStyle(color: Colors.white),),
            onTap: () => {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profile()))
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.person_outline),
          //   title: Text('Person'),
          //   onTap: () => {
          //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profile()))
          //   },
          // ),
        ],
      ),
    );
  }
}
