import 'package:flutter/material.dart';
import 'package:solar_project/screens/drawer/sidemenu.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidemenu(),
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.purple,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Profile', style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
