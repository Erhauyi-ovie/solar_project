import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:solar_project/screens/home/home.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isNotValid = false;

  Future<void> _login() async {
    var url = Uri.parse('https://power-mag-sys.onrender.com/api/userLogin'); // Convert to Uri
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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      } else {
        setState(() {
          _isNotValid = true;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(data['message']),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login failed'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SafeArea(
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
                      // key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            child: Text(
                              "Email",
                              style: TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                          ),
                          TextFormField(
                            controller: _emailController,
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
                              errorStyle: TextStyle(color: Colors.white),
                              errorText: _isNotValid ? "Enter proper Info" : null,
                              hintText: "Enter Password",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                            ),
                            obscureText: true,
                          ).p4().px12(),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10, bottom: 10),
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(color: Colors.blue, fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'Contact Admin',
                                  style: TextStyle(color: Colors.blue, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: ()async{
                              await _login();
                            },
                            child: VxBox(
                              child: "Login"
                                  .text
                                  .xl
                                  .white
                                  .makeCentered()
                                  .p16(),
                            ).green600.rounded.make().px24().py20(),
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
      ),
    );
  }
}
