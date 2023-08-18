import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';


class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}
bool _isNotValid = false;

class _SignupPageState extends State<SignupPage> {
  late GlobalKey<FormState> _formKey;

  String _username = '';
  String _email = '';
  String _password = '';


  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  Future<void> _signup() async {
    if (_formKey.currentState?.validate() ?? false) {
      final response = await http.post(
        Uri.parse('https://8e25-102-215-57-183.ngrok.io/user-signup'), // Convert String URL to Uri
        body: {
          'name': _username,
          'email': _email,
          'password': _password,
        },
      );

      if (response.statusCode == 200) {
        // User successfully created
        Navigator.of(context).pop();
      } else {
        // Error creating user
        print(response.body);
        setState(() {
          _isNotValid = true;
        });
      }
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
                    key: _formKey,
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
                          onChanged: (value) {
                            setState(() {
                              _username = value;
                            });
                          },
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
                          onChanged: (value) {
                            setState(() {
                              _email = value;
                            });
                          },
                          keyboardType: TextInputType.emailAddress,
                        ).p4().px12(),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                        TextFormField(
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
                          onChanged: (value) {
                            setState(() {
                              _password = value;
                            });
                          },
                          obscureText: true,
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
                          onTap: _signup,
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






// 'https://a8a4-102-215-57-183.ngrok.io/api/registerUser'



