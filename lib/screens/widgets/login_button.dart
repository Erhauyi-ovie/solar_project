import 'package:flutter/material.dart';

class HoverableTextField extends StatefulWidget {
  @override
  _HoverableTextFieldState createState() => _HoverableTextFieldState();
}

class _HoverableTextFieldState extends State<HoverableTextField> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 590,
      left: 50,
      child: InkWell(
        onHover: (value) {
          setState(() {
            _isHovering = value;
          });
        },
        child: Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(
              color: _isHovering ? Colors.blue : Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Login',
              style: TextStyle(
                color: _isHovering ? Colors.blue : Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Stack(
        children: [
          Center(
            child: Text('Other content goes here'),
          ),
          HoverableTextField(),
        ],
      ),
    ),
  ));
}
