import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  final List<ChartData> chartData = [
    ChartData('India', 20, 30, 40, 50),
    ChartData('Nigeria', 20, 30, 40, 50),
    ChartData('Pakistan', 20, 30, 40, 50),
    ChartData('Ghana', 20, 30, 40, 50),
    ChartData('Gambia', 20, 30, 40, 50),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:   SizedBox(
          height: 400,
          child: SfCartesianChart(primaryXAxis: CategoryAxis(),
              series: [
                StackedColumnSeries(dataSource: chartData,
                    xValueMapper: (ChartData ch,_)=> ch.x,
                    yValueMapper: (ChartData ch,_)=> ch.y1)
              ]),
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
  ChartData(this.x, this.y1, this.y2, this
      .y3, this.y4);
}
