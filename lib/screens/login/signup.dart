import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:solar_project/screens/home/home.dart';
import 'package:solar_project/screens/login/login_page.dart';
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
        Uri.parse('https://power-mag-sys.onrender.com/api/registerUser'), // Convert String URL to Uri
        body: {
          'username': _username,
          'email': _email,
          'password': _password,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        // User successfully created
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Signup successful',style:TextStyle(color: Colors.white)),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
          ),
        );
        Navigator.of(context).pop(LoginPage());
      } else {
        // Error creating user
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Signup failed',style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
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
                        Padding(
                          padding: const EdgeInsets.only(left:15),
                          child: const SizedBox(
                            child: Text(
                              "Username",
                              style: TextStyle(color: Colors.blue, fontSize: 20),
                            ),
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
                        Padding(padding: EdgeInsets.only(left: 15),
                        child:  const Text(
                          "Email",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),),
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
                        Padding(padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Password",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),),
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
                                      TextSpan(text: "Already have an account?  ",style: TextStyle(
                                          color: Colors.black, fontSize: 12),),
                                      TextSpan(
                                          text: "Login",
                                          style: TextStyle(color: Colors.blue))
                                    ]),
                              ),
                              onTap: (){
                                Navigator.of(context).pop();
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
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
    );
  }
}





