import 'package:flutter/material.dart';
import 'package:solar_project/screens/drawer/sidemenu.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidemenu(),
      appBar: AppBar(
        title: Text('Report'),
        backgroundColor: Colors.purple,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Report', style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
