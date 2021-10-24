import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class GreenHouseChart_second extends StatefulWidget {
  const GreenHouseChart_second({Key? key}) : super(key: key);

  @override
  State<GreenHouseChart_second> createState() => _GreenHouseChartState();
}

class _GreenHouseChartState extends State<GreenHouseChart_second> {
  final List<SalesData> chartData = [
    SalesData(1, 00),
    SalesData(2, 01),
    SalesData(23, 02),
    SalesData(12, 03),
    SalesData(12, 04),
    SalesData(27, 05),
    SalesData(45, 06),
    SalesData(8, 07),
    SalesData(9, 08),
    SalesData(10, 08),
    SalesData(11, 10),
    SalesData(12, 11),
    SalesData(13, 12),
    SalesData(14, 13),
    SalesData(34, 14),
    SalesData(63, 15),
    SalesData(17, 16),
    SalesData(18, 17),
    SalesData(19, 18),
    SalesData(20, 19),
    SalesData(21, 20),
    SalesData(22, 21),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 300,
        height: 500,
        child: SfCartesianChart(
            title: ChartTitle(
              text: 'Уровень света',
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
  final int time;

  ///this is X
}
