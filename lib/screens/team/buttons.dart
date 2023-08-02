import 'package:flutter/material.dart';
import 'package:solar_project/screens/bottomTabBar/FabTabs.dart';
import 'package:solar_project/screens/activeAreas/button.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Button with Line Demo',
      home: ButtonWithLineDemo(),
    );
  }
}

