import 'package:flutter/material.dart';
import 'package:solar_project/screens/drawer/sidemenu.dart';

class ActiveAreas extends StatefulWidget {
  const ActiveAreas({Key? key}) : super(key: key);

  @override
  State<ActiveAreas> createState() => _MoreState();
}

class _MoreState extends State<ActiveAreas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidemenu(),
      appBar: AppBar(
        title: Text('Active Areas'),
        backgroundColor: Colors.teal,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Active Areas', style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
