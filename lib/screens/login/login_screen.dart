import 'package:flutter/material.dart';
import 'package:solar_project/screens/home/home.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 300, // Adjust the height as needed
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Image.asset('assets/images/solars.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250, left: 170),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 330, left: 55),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 360, left: 55),
              child: SizedBox(
                height: 60,
                width: 300,
                child: Container(
                  height: 60,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 55),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 490, left: 55),
              child: SizedBox(
                height: 60,
                width: 300,
                child: Container(
                  height: 60,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 550, left: 60),
              child: SizedBox(
                height: 60,
                width: 300,
                child: Container(
                  height: 60,
                  width: 300,
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
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 630, left: 45),
              child: SizedBox(
                height: 60,
                width: 300,
                child: Container(
                  height: 60,
                  width: 300,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Container(
                          height: 50,
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: SizedBox(
                    width: 415,
                    height: 345,
                    // child: Image.asset('assets/images/solars.jpg'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}