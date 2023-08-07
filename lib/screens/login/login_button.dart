import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_project/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login Button Demo',
      home: LoginButtonDemo(), // Changed to LoginButtonDemo
    );
  }
}

class LoginButtonDemo extends StatefulWidget { // Changed to LoginButtonDemo
  @override
  _LoginButtonDemoState createState() => _LoginButtonDemoState();
}

class _LoginButtonDemoState extends State<LoginButtonDemo> {
  int selectedButtonIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      selectedButtonIndex = index;
    });

  }

  Widget _buildButton(int index, String label) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedButtonIndex = index;
        });
        // Navigate to the Home page
        Get.to(Home());
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: selectedButtonIndex == index ? Colors.green : Colors.grey,
              width: 2.0,
            ),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: selectedButtonIndex == index ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildButton(0, 'Tent'),
              _buildButton(1, 'Calvary Arrows'),
              _buildButton(2, 'Chalet'),
            ],
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
