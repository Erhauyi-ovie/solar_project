import 'package:flutter/material.dart';


class Logout extends StatelessWidget {
  void _showLogoutModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout Confirmation'),
          content: Container(
            width: 300, // Custom width
            height: 400, // Custom height
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Are you sure you want to log out?'),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the dialog
                      },
                      child: Text('Cancel'),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the dialog
                        // Perform logout logic here
                        // For example, you can navigate to the login screen
                      },
                      child: Text('Logout'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Modal Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showLogoutModal(context);
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}
