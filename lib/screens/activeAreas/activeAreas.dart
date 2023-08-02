import 'package:flutter/material.dart';
import 'package:solar_project/screens/drawer/sidemenu.dart';
import 'package:get/get.dart';
import 'package:solar_project/screens/activeAreas/button.dart';

class ActiveAreas extends StatefulWidget {
  const ActiveAreas({Key? key}) : super(key: key);

  @override
  State<ActiveAreas> createState() => _ActiveAreasState();
}

class _ActiveAreasState extends State<ActiveAreas> {
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
              'Active Areas',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(width: 10)
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 65),
            child: Positioned(
              child: ButtonWithLineDemo(),
            ),
          ),
          Positioned(
            top: 160,
            left: 25,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              height: 79,
              width: 350,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Total Energy Produced',
                    style: TextStyle(fontSize: 18, color: Colors.teal[700]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: '198.8',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal[700],
                      ),
                      children: [
                        TextSpan(
                          text: 'kwh',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.teal[700],
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
            top: 1,
            left: 0,
            child: Container(
              width: 392,
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.cloud_queue,
                    color: Colors.teal[700],
                  ),
                  SizedBox(
                    width: 116,
                  ),
                  Center(
                    child: Baseline(
                      baseline: 24.0,
                      baselineType: TextBaseline.alphabetic,
                      child: RichText(
                        text: TextSpan(
                          text: '32',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.teal[700],
                          ),
                          children: [
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -8),
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.teal[700],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: 'C',
                              style: TextStyle(
                                color: Colors.teal[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    'Sunny',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.teal[700],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 25,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              height: 79,
              width: 350,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Total Energy Produced',
                    style: TextStyle(fontSize: 18, color: Colors.teal[700]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: '198.8',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal[700],
                      ),
                      children: [
                        TextSpan(
                          text: 'kwh',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.teal[700],
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
            top: 390,
            left: 25,
            child: Container(
              height: 30,
              width: 100,
              child: Text(
                'Sub-areas',
                style: TextStyle(fontSize: 20, color: Colors.teal[700]),
              ),
            ),
          ),
          Positioned(
            top: 440,
            left: 35,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 150,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Text(
                          'Tent Area',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            text: '35',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.teal[700],
                            ),
                            children: [
                              TextSpan(
                                text: 'kwh',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 150,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Text(
                          'Calvary Arrows',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            text: '20',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.teal[700],
                            ),
                            children: [
                              TextSpan(
                                text: 'kwh',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
