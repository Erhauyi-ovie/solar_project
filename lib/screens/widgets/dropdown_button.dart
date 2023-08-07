import 'package:flutter/material.dart';


class FontSizeDropdown extends StatefulWidget {
  @override
  _FontSizeDropdownState createState() => _FontSizeDropdownState();
}

class _FontSizeDropdownState extends State<FontSizeDropdown> {
  double _selectedFontSize = 16.0; // Default font size

  List<double> _fontSizeOptions = [12.0, 16.0, 20.0, 24.0, 28.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Size Dropdown Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<double>(
              value: _selectedFontSize,
              onChanged: (newValue) {
                setState(() {
                  _selectedFontSize = newValue!;
                });
              },
              icon: Icon(Icons.text_fields), // Icon representing font-related functionality
              items: _fontSizeOptions.map<DropdownMenuItem<double>>((double value) {
                return DropdownMenuItem<double>(
                  value: value,
                  child: Text('${value.toString()} pt'),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            // Text(
            //   'Sample Text',
            //   style: TextStyle(fontSize: _selectedFontSize),
            // ),
          ],
        ),
      ),
    );
  }
}
