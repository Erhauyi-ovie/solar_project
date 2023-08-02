
import 'package:flutter/material.dart';

class CalvaryArrowsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calvary Arrows', style:TextStyle(color: Colors.white) ,),
        backgroundColor:Colors.teal[700],
      ),
      body: Stack(
        children: [
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
            left: 37,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 140,
                  width: 160,
                  decoration: const BoxDecoration(
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
                          'Main School',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            text: '2',
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
                  height: 140,
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
                          'Staff Quaters',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            text: '2',
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
          Positioned(
            top: 610,
            left: 37,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 130,
                  width: 160,
                  decoration: const BoxDecoration(
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
                          'Boys Hostel',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            text: '2',
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
                  height: 130,
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
                          'Girls Hostel',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            text: '2',
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
