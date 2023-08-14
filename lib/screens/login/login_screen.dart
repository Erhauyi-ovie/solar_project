import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';
import 'config.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isNotValid = false;

  void registerUser() async {
    print("registerUser called");
    if (emailController.text.isNotEmpty &&
        usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      var regBody = {
        "username": usernameController.text,
        "email": emailController.text,
        "password": passwordController.text,
      };
      var response = await http.post(
        Uri.parse(Registration), // Replace with your API endpoint
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(regBody),
      );
      print(response);

      // setState(() {
      //   _isNotValid = false; // Resetting _isNotValid when all fields are filled
      // });
    } else {
      setState(() {
        _isNotValid = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: size.width * 1,
                  height: 280,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset("assets/images/solar.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          child: Text(
                            "Username",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                        ),
                        TextFormField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            errorStyle: TextStyle(color: Colors.white),
                            errorText: _isNotValid ? "Enter proper Info" : null,
                            hintText: "Enter Username",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ).p4().px12(),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            errorStyle: TextStyle(color: Colors.white),
                            errorText: _isNotValid ? "Enter proper Info" : null,
                            hintText: "Enter Email",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ).p4().px12(),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                        TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            errorStyle: TextStyle(color: Colors.white),
                            errorText: _isNotValid ? "Enter proper Info" : null,
                            hintText: "Enter Password",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ).p4().px12(),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, bottom: 10),
                              child: Text(
                                'Forgot Password?',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Contact Admin',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap:
                              registerUser, // Call the registerUser function when tapped
                          child: VxBox(
                                  child: "Register"
                                      .text.xl
                                      .white
                                      .makeCentered()
                                      .p16())
                              .green600
                              .rounded
                              .make()
                              .px24()
                              .py20(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: Login()));
