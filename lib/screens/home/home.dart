import'package:flutter/material.dart';
import 'package:solar_project/screens/drawer/sidemenu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidemenu(),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.greenAccent,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Home', style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
