import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Required to hide the status bar
import 'package:solar_project/screens/login/signup.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const SplashScreenDuration = Duration(seconds: 2);
  
  void _navigateToLoginScreen() {
    Navigator.of(context).pushReplacementNamed('/LoginScreen');
  }

  @override
  void initState() {
    super.initState();
    Timer(SplashScreenDuration, _navigateToLoginScreen);
  }

  @override
  Widget build(BuildContext context) {
    // Hide the status bar to get a full-screen SplashScreen screen
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/logo.jpg'),
      ),
    );
  }

  @override
  void dispose() {
    // Restore the status bar when the widget is disposed
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }
}
