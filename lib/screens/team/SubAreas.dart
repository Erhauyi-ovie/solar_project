import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_project/screens/team/button1.dart';

class ButtonWithLineDemo extends StatefulWidget {
  @override
  _ButtonWithLineDemoState createState() => _ButtonWithLineDemoState();
}

class _ButtonWithLineDemoState extends State<ButtonWithLineDemo> {
  int selectedButtonIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
    Get.to(() => DetailPage(selectedButtonIndex: index));
  }

  Widget _buildButton(int index, String label) {
    return InkWell(
      onTap: () => _onButtonPressed(index),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: selectedButtonIndex == index ? Colors.green : Colors.transparent,
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
