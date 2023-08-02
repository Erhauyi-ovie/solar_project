import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Remove the default AppBar
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              width: 415,
              height: 345,
              child: Image.asset('assets/images/solars.jpg'),
            ),
          ),
          const Positioned(
            top: 240,
            left: 180,
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 340,
            left: 50,
            child: Text(
              'Email',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            top: 370,
            left: 50,
            child: Container(
              height: 60,
              width: 300,
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Enter password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0),
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 450,
            left: 50,
            child: Text(
              'Password',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            top: 480,
            left: 50,
            child: Container(
              height: 60,
              width: 300,
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Enter password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 50,
            child: Row(
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blue),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Contact Admin',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 590,
            left: 50,
            child: Container(
              height: 60,
              width: 300,
              child: const Stack(
                children: [
                  Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: '',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
