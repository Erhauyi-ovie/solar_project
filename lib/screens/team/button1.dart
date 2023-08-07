import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int selectedButtonIndex;

  DetailPage({required this.selectedButtonIndex});

  @override
  Widget build(BuildContext context) {
    List<String> content;
    String pageTitle;

    switch (selectedButtonIndex) {
      case 0:
        content = ['Item 777', 'Item 2', 'Item 3'];
        pageTitle = 'Tent';
        break;
      case 1:
        content = ['Item A', 'Item B', 'Item C', 'Item D'];
        pageTitle = 'Calvary Arrows';
        break;
      case 2:
        content = ['Apple', 'Banana', 'Orange'];
        pageTitle = 'Chalet';
        break;
      default:
        content = [];
        pageTitle = 'Unknown';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: ListView.builder(
        itemCount: content.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(content[index]),
          );
        },
      ),
    );
  }
}
