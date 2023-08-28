import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:solar_project/screens/drawer/sidemenu.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<Map<String, dynamic>> fetchTotalDeviceData() async {
    final response = await http
        .get(Uri.parse('https://power-mag-sys.onrender.com/api/totalEnergy'));

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 304) {
      print(response.body);
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
  NumberFormat formatter = NumberFormat("#,##0.00", "en_US");

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        drawer: Sidemenu(),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(39, 167, 231, 1),
          titleSpacing: 0,
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(Icons.menu, size: 29, color: Colors.white),
              );
            },
          ),
          title: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 95),
              Text(
                'Home',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ],
          ),
          actions: [
            const Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(width: 10)
          ],
        ),
        body: Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: FutureBuilder(
              future: fetchTotalDeviceData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else {
                  final data = snapshot.data!;
                  return Stack(
                    children: [
                      Positioned(
                        top: 1,
                        left: 6,
                        child: Container(
                          width: 392,
                          height: 80,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              const Icon(
                                Icons.cloud_queue,
                                color: Color.fromRGBO(39, 167, 231, 1),
                              ),
                              const SizedBox(
                                width: 116,
                              ),
                              Center(
                                child: Baseline(
                                  baseline: 24.0,
                                  baselineType: TextBaseline.alphabetic,
                                  child: RichText(
                                    text: TextSpan(
                                      text:data['Temperature']!=null? "${formatter.format(data['Temperature'])}":"",
                                      style: const TextStyle(
                                        fontSize: 24,
                                        color: Color.fromRGBO(39, 167, 231, 1),
                                      ),
                                      children: [
                                        WidgetSpan(
                                          child: Transform.translate(
                                            offset: const Offset(0, -8),
                                            child: const Text(
                                              '0',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color.fromRGBO(
                                                    39, 167, 231, 1),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const TextSpan(
                                          text: 'C',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(39, 167, 231, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              const Text(
                                'Sunny',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromRGBO(39, 167, 231, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 100,
                        child: Container(
                          width: 335,
                          height: 289,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(39, 167, 231, 1),
                                blurRadius: 4,
                                offset: Offset(1, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 95,
                        top: 154,
                        child: Container(
                          width: 206,
                          height: 206,
                          decoration: const ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color.fromRGBO(39, 167, 231, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 116,
                        top: 175,
                        child: Container(
                          width: 164,
                          height: 164,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 164,
                                  height: 164,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 164,
                                          height: 164,
                                          decoration: const ShapeDecoration(
                                            gradient: RadialGradient(
                                              center: Alignment(-0.02, 1.02),
                                              radius: 0,
                                              colors: [
                                                Color(0xFFF7FBFD),
                                                Color(0xFF71A7CD)
                                              ],
                                            ),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 6.75,
                                        top: 6,
                                        child: Container(
                                          width: 151.39,
                                          height: 151.39,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 151.39,
                                                  height: 151.39,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    gradient: RadialGradient(
                                                      center: Alignment(
                                                          -0.02, 1.02),
                                                      radius: 0,
                                                      colors: [
                                                        Color(0xFFF7FBFD),
                                                        Color(0xFF71A7CD)
                                                      ],
                                                    ),
                                                    shape: OvalBorder(),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 5.25,
                                                top: 56,
                                                child:  Container(
                                                  width: 141,
                                                  height: 39,
                                                  child:  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      RichText(text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: "${formatter.format(data['Battery_Level'])}",
                                                            style: const TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  1),
                                                              fontSize: 30,
                                                              fontFamily:
                                                              'Inter',
                                                              fontWeight:
                                                              FontWeight
                                                                  .w600,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text: ' ',
                                                            style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                  39,
                                                                  167,
                                                                  231,
                                                                  1),
                                                              fontSize: 24,
                                                              fontFamily:
                                                              'Inter',
                                                              fontWeight:
                                                              FontWeight
                                                                  .w600,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text: 'kwh',
                                                            style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  1),
                                                              fontSize: 20,
                                                              fontFamily:
                                                              'Inter',
                                                              fontWeight:
                                                              FontWeight
                                                                  .w600,
                                                            ),
                                                          ),
                                                        ],
                                                      ),)

                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 420,
                        left: 25,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(39, 167, 231, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          height: 89,
                          width: 350,
                          child: Column(
                            children: [
                              const Text(
                                'Total Energy Produced',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(255, 255, 255, 1)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: "${formatter.format(data['AC_Reading'])}",
                                  style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  children: [
                                    const TextSpan(
                                      text: 'kwh',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(255, 255, 255, 1),
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
                        top: 540,
                        left: 20,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(39, 167, 231, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          height: 89,
                          width: 170,
                          child: Column(
                            children: [
                              const Text(
                                "Energy Consumed",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(255, 255, 255, 1)),
                              ),
                              RichText(
                                text: TextSpan(
                                  text:data['Meter_Reading']!=null? "${formatter.format(data['Meter_Reading'])}":"",
                                  style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  children: [
                                    const TextSpan(
                                      text: 'kwh',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromRGBO(255, 255, 255, 1),
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
                        top: 540,
                        left: 210,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(39, 167, 231, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          height: 89,
                          width: 170,
                          child: Column(
                            children: [
                              const Text(
                                "Light Intensity",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(255, 255, 255, 1)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: "${formatter.format(data['Sun_Intensity'])}",
                                  style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  children: [
                                    const TextSpan(
                                      text: 'kwh',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }
              }),
        ));
  }
}
