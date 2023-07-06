import 'package:flutter/material.dart';
import 'package:solar_project/screens/drawer/sidemenu.dart';

class Surveillance extends StatefulWidget {
  const Surveillance({Key? key}) : super(key: key);

  @override
  State<Surveillance> createState() => _SurveillanceState();
}

class _SurveillanceState extends State<Surveillance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidemenu(),
      appBar: AppBar(
        title: Text('Surveillance'),
        backgroundColor: Colors.purple,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Surveillance', style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
