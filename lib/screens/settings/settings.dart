import 'package:flutter/material.dart';
import 'package:solar_project/screens/drawer/sidemenu.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidemenu(),
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.purple,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Settings', style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
