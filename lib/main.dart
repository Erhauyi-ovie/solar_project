import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_project/screens/bottomTabBar/FabTabs.dart';
import 'package:solar_project/screens/login/login_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: SplashScreen()
      home: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
        builder: (_,child) {
          return LoginPage();
        }
      ),
        // FabTabs(selectedIndex: 0,)

    );
  }
}
