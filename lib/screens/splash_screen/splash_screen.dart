import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_project/screens/login/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.offAll(() => SignupPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          width: 375,
          height: 812,
          padding: const EdgeInsets.symmetric(horizontal: 100),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: const Stack(
                          children: [
                            Image(
                              image: AssetImage("assets/images/logo.png"),
                            ),
                          ],
                        ),

                      ),
                      // const Text(
                      //   'SYNERGY',
                      //   style: TextStyle(
                      //     color: Color(0xFF148760),
                      //     fontSize: 36,
                      //     fontFamily: 'Lexend',
                      //     fontWeight: FontWeight.w600,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(GetMaterialApp(home: SplashScreen()));
}




