import 'package:flutter/material.dart';
import 'package:solar_project/screens/drawer/sidemenu.dart';

class Analytics extends StatefulWidget {
  const Analytics({Key? key}) : super(key: key);

  @override
  State<Analytics> createState() => _TeamState();
}

class _TeamState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidemenu(),
      appBar: AppBar(
        title: Text('Analytics'),
        backgroundColor: Colors.pinkAccent,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Analytics', style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
