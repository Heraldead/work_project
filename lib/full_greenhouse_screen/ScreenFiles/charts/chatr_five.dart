import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class GreenHouseChart_five extends StatefulWidget {
  const GreenHouseChart_five({Key? key}) : super(key: key);

  @override
  State<GreenHouseChart_five> createState() => _GreenHouseChartState();
}

class _GreenHouseChartState extends State<GreenHouseChart_five> {
  final List<SalesData> chartData = [
    SalesData(1, 123),
    SalesData(2, 100),
    SalesData(3, 21),
    SalesData(4, 57),
    SalesData(5, 54),
    SalesData(6, 32),
    SalesData(7, 12),
    SalesData(8, 45),
    SalesData(9, 34),
    SalesData(10, 56),
    SalesData(11, 78),
    SalesData(12, 34),
    SalesData(13, 68),
    SalesData(14, 96),
    SalesData(15, 35),
    SalesData(16, 34),
    SalesData(17, 65),
    SalesData(18, 28),
    SalesData(19, 34),
    SalesData(20, 35),
    SalesData(21, 28),
    SalesData(22, 34),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 300,
        height: 500,
        child: SfCartesianChart(
            title: ChartTitle(
              text: 'Внутренняя влажность',
              backgroundColor: Colors.grey[300],
            ),
            primaryXAxis:
                NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift),
            series: <ChartSeries>[
              // Renders line chart
              LineSeries<SalesData, int>(
                  dataSource: chartData,
                  xValueMapper: (SalesData sales, _) => sales.temperature,
                  yValueMapper: (SalesData sales, _) => sales.time)
            ]),
      ),
    );
  }
}

class SalesData {
  SalesData(this.temperature, this.time);
  final int temperature;

  ///this is Y
  final double time;

  ///this is X
}
