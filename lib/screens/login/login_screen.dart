import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                  width: size.width*1,
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
                            child: Text("Email", style: TextStyle(color: Colors.blue, fontSize:20),),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: "Enter Email",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)
                              )
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            child: Text("Password", style: TextStyle(color: Colors.blue, fontSize:20),),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: "Enter Password",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue)
                                ),
                                suffixIcon: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.remove_red_eye_sharp),
                                )
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10, bottom: 10),
                                child: Text('Forgot Password?', style: TextStyle(color: Colors.blue, fontSize:20),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text('Contact Admin',style: TextStyle(color: Colors.blue, fontSize:20)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 70,
                            width: 330,
                            child: ElevatedButton(
                              onPressed: () {
                              },
                              child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
