import 'package:flutter/material.dart';

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

  Map<int, List<String>> buttonContent = {
    0: ['Item 1', 'Item 2', 'Item 3'],
    1: ['Item A', 'Item B', 'Item C', 'Item D'],
    2: ['Apple', 'Banana', 'Orange'],
  };

  Widget _buildItemList() {
    List<String> items = buttonContent[selectedButtonIndex] ?? [];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
          onTap: () {
            // Perform any action when an item is tapped.
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button with Line Demo'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildButton(0, 'Button 1'),
              _buildButton(1, 'Button 2'),
              _buildButton(2, 'Button 3'),
            ],
          ),
          Expanded(
            child: selectedButtonIndex != -1 ? _buildItemList() : Container(),
          ),
        ],
      ),
    );
  }
}
