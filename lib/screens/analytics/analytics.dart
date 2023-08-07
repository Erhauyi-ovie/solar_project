import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:solar_project/screens/drawer/sidemenu.dart';

class Analytics extends StatefulWidget {
  const Analytics({Key? key}) : super(key: key);

  @override
  State<Analytics> createState() => _TeamState();
}

class _TeamState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidemenu(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(39, 167, 231, 1),
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
              'Analytics',
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
                    color: Color.fromRGBO(39, 167, 231, 1),
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
                            color: Color.fromRGBO(39, 167, 231, 1),
                          ),
                          children: [
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -8),
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(39, 167, 231, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                                text: 'C',
                                style: TextStyle(
                                  color: Color.fromRGBO(39, 167, 231, 1),
                                ))
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
                      color: Color.fromRGBO(39, 167, 231, 1),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 65,
            left: 23,
            child: Container(
              width: 392,
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 19,
                  ),
                  Text(
                    'Day',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(39, 167, 231, 1),
                    ),
                  ),
                  SizedBox(
                    width: 36,
                  ),
                  Text(
                    'Week',
                    style: TextStyle(
                      fontSize: 19,
                      color: Color.fromRGBO(39, 167, 231, 1),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'Month',
                    style: TextStyle(
                      fontSize: 19,
                      color: Color.fromRGBO(39, 167, 231, 1),
                    ),
                  ),
                  SizedBox(
                    width: 39,
                  ),
                  Text(
                    'Year',
                    style: TextStyle(
                      fontSize: 19,
                      color: Color.fromRGBO(39, 167, 231, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 105,
            left: 30,
            child: Row(
              children: [
                Container(
                  color: Color.fromRGBO(39, 167, 231, 1),
                  width: 50,
                  height: 3,
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey[400],
                      width: 80,
                      height: 3,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey[400],
                      width: 190,
                      height: 3,
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 125,
            left: 20,
            child: Row(
              children: [
                Container(
                  child: Icon(Icons.arrow_back_ios_new, color: Color.fromRGBO(39, 167, 231, 1)),
                ),
                SizedBox(
                  width: 65,
                ),
                Container(
                  child: Icon(Icons.calendar_month, color: Color.fromRGBO(39, 167, 231, 1)),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  child: Text(
                    '15-06-2023',
                    style: TextStyle(fontSize: 16, color: Color.fromRGBO(39, 167, 231, 1)),
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  child: Icon(Icons.arrow_forward_ios, color: Color.fromRGBO(39, 167, 231, 1)),
                )
              ],
            ),
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            bottom: 0,
            child: ChartScreen(),
          ),
        ],
      ),
    );
  }
}

class ChartScreen extends StatelessWidget {
  final List<ChartData> chartData = [
    ChartData('7:00am', 20, 30, 40, 50),
    ChartData('8:00am', 20, 30, 40, 50),
    ChartData('9:00am', 20, 30, 40, 50),
    ChartData('10:00am', 20, 30, 40, 50),
    ChartData('11:00am', 20, 30, 40, 50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            series: [
              StackedColumnSeries(
                dataSource: chartData,
                xValueMapper: (ChartData ch, _) => ch.x,
                yValueMapper: (ChartData ch, _) => ch.y1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  final String x;
  final int y1;
  final int y2;
  final int y3;
  final int y4;

  ChartData(this.x, this.y1, this.y2, this.y3, this.y4);
}
