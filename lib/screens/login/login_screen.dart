import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 280,

              child: Image.asset('assets/solar.jpg'), 
            ),
            const SizedBox(height: 20),
            // Email and Password fields
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // "Forgot Password? Contact Admin" text
            GestureDetector(
              onTap: () {
                // Implement the logic to handle "Forgot Password" action here
              },
              child: const Text(
                'Forgot Password? Contact Admin',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
            const SizedBox(height: 20),
            // Login button
            SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  // Implement the login logic here
                },
                child: const Text('Login', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
