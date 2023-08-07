import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_project/screens/activeAreas/calvary_arrows.dart';
import 'package:solar_project/screens/activeAreas/chalet.dart';
import 'package:solar_project/screens/activeAreas/mini_mart.dart';
import 'package:solar_project/screens/activeAreas/tent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Button with Line Demo',
      home: ButtonWithLineDemo(),
    );
  }
}

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

    switch (index) {
      case 0:
        Get.to(() => TentPage());
        break;
      case 1:
        Get.to(() => CalvaryArrowsPage());
        break;
      case 2:
        Get.to(() => ChaletPage());
        break;
      case 3:
        Get.to(() => MiniMartPage());
    }
  }

  Widget _buildButton(int index, String label) {
    return InkWell(
      onTap: () => _onButtonPressed(index),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: selectedButtonIndex == index ? Colors.blue : Colors.grey,
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                _buildButton(0, 'Tent'),
                _buildButton(1, 'Calvary Arrows'),
                _buildButton(2, 'Chalet'),
                _buildButton(3, 'Minimart'),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
