import 'package:flutter/material.dart';
import 'package:solar_project/screens/drawer/sidemenu.dart';
import 'package:solar_project/screens/widgets/logout_button.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void _showLogoutModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 4.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Icon(
                    Icons.logout_outlined, color: Colors.teal,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Are you sure you want to logout?',
                  style: TextStyle(fontSize: 16, color: Colors.teal),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Container(
                  width: 250, // Adjust the width as needed
                  height: 60, // Adjust the height as needed
                  child: ElevatedButton(
                    onPressed: () {
                      // Perform logout action
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // Set the background color to red
                    ),
                    child: Text('No, Keep me signed in', style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250, // Adjust the width as needed
                  height: 60, // Adjust the height as needed
                  child: ElevatedButton(
                    onPressed: () {
                      // Perform logout action
                      Navigator.of(context).pop();
                    },
                    child: Text('Yes, Log me out', style: TextStyle(fontSize: 18, color: Colors.teal)),
                  ),
                )

              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidemenu(),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        titleSpacing: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu, size: 29, color: Colors.white),
            );
          },
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 65),
            Text(
              'Settings',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.more_vert_outlined,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              color: Colors.teal,
              width: 413,
              height: 50,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 15),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/pic4.jpg'),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Admin 21400',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Online',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 305,
            child: FloatingActionButton(
              onPressed: () {
                // Handle button press
              },
              child: Icon(Icons.camera_alt_outlined,
                color: Colors.cyan,),
              shape: CircleBorder(),
              backgroundColor: Colors.white, // Customize the background color
            ),
          ),
          Positioned(
            top: 90,
            left: 20,
            child: Row(
              children: [
                Container(
                  child: Icon(Icons.smartphone, size: 35, color: Colors.teal,),
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        'App preferences',
                        style: TextStyle(
                            color: Colors.teal
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Adjust your view',
                        style: TextStyle(
                            color: Colors.teal
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 140,
            left: 25,
            child: Container(
              width: 350,
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal,
                    blurRadius: 6,
                    offset: Offset(2, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(Icons.text_fields, color: Colors.teal,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Text('Font Size',
                                  style: TextStyle(color: Colors.teal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          child: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.teal,),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(Icons.brightness_2, color: Colors.teal,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Text('Dark Theme',
                                  style: TextStyle(color: Colors.teal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          child: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.teal,),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(Icons.signal_cellular_0_bar, color: Colors.teal,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Text('Energy unit',
                                  style: TextStyle(color: Colors.teal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          child: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.teal,),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 320,
            left: 20,
            child: Row(
              children: [
                Container(
                  child: Icon(Icons.help_outline, size: 35, color: Colors.teal,),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Help',
                        style: TextStyle(
                            color: Colors.teal
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Get quick assistance',
                        style: TextStyle(
                            color: Colors.teal
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 390,
            left: 25,
            child: Container(
              width: 350,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal,
                    blurRadius: 6,
                    offset: Offset(2, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(Icons.info_outline, color: Colors.teal,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Text('FAQ',
                                  style: TextStyle(color: Colors.teal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          child: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.teal,),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(Icons.headset_mic, color: Colors.teal,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Text('Contact support',
                                  style: TextStyle(color: Colors.teal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          child: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.teal,),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 530,
            left: 20,
            child: Row(
              children: [
                Container(
                  child: Icon(Icons.logout_outlined, size: 35, color: Colors.teal),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          _showLogoutModal(context);
                        },
                        child: Text('Logout', style: TextStyle(color: Colors.teal),),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
