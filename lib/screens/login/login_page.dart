import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:solar_project/screens/bottomTabBar/FabTabs.dart';
import 'package:solar_project/screens/home/home.dart';
import 'package:solar_project/screens/login/signup.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isNotValid = false;

  Future<void> _login() async {
    var url = Uri.parse(
        'https://power-mag-sys.onrender.com/api/userLogin'); // Convert to Uri
    var response = await http.post(url, body: {
      'email': _emailController.text,
      'password': _passwordController.text,
    });

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      if (data['success'] == true) {
        // var redirectUrl = data['redirectUrl'];
        // Get.toNamed(redirectUrl); // Navigate to the homepage using GetX
        print(response.body);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Login successful',style:TextStyle(color: Colors.white)),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
          ),
        );
        Timer(Duration(seconds: 2), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FabTabs(selectedIndex: 0,)),
          );
        });

      } else {
        setState(() {
          _isNotValid = true;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Login failed',style:TextStyle(color: Colors.white)),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login failed',style:TextStyle(color: Colors.white)),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: size.width * 1,
                    height: 280.sp,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset("assets/images/solar.jpg"),
                    ),
                  ),
                  Padding(
                    padding:
                         EdgeInsets.only(left: 40.sw, right: 40.sw, top: 40.sh),
                    child: Form(
                      // key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           SizedBox(
                            child: Text(
                              "Email",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20.sp),
                            ),
                          ),
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              errorStyle: const TextStyle(color: Colors.white),
                              errorText:
                                  _isNotValid ? "Enter proper Info" : null,
                              hintText: "Enter Email",
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ).p4().px12(),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Password",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          TextFormField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              errorStyle: const TextStyle(color: Colors.white),
                              errorText:
                                  _isNotValid ? "Enter proper Info" : null,
                              hintText: "Enter Password",
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                            ),
                            obscureText: true,
                          ).p4().px12(),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10, bottom: 10),
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'Contact Admin',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () async {
                              await _login();
                            },
                            child: VxBox(
                              child: "Login".text.xl.white.makeCentered().p16(),
                            ).green600.rounded.make().px24().py20(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                child: RichText(
                                  text: const TextSpan(
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                      children: [
                                        TextSpan(text: "Don't have an account?  ",style: TextStyle(
                                            color: Colors.black, fontSize: 12)),
                                        TextSpan(
                                            text: "Sign Up",
                                            style: TextStyle(color: Colors.blue))
                                      ]),
                                ),
                                onTap: (){
                                  Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupPage()));
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
