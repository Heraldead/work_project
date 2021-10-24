import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class GreenHouseChart extends StatefulWidget {
  const GreenHouseChart({Key? key}) : super(key: key);

  @override
  State<GreenHouseChart> createState() => _GreenHouseChartState();
}

class _GreenHouseChartState extends State<GreenHouseChart> {
  final List<SalesData> chartData = [
    SalesData(1, 98),
    SalesData(2, 58),
    SalesData(3, 53),
    SalesData(4, 85),
    SalesData(5, 35),
    SalesData(6, 32),
    SalesData(7, 56),
    SalesData(8, 25),
    SalesData(9, 2),
    SalesData(10, 21),
    SalesData(11, 22),
    SalesData(12, 84),
    SalesData(13, 35),
    SalesData(14, 31),
    SalesData(15, 28),
    SalesData(16, 34),
    SalesData(17, 35),
    SalesData(18, 28),
    SalesData(19, 34),
    SalesData(20, 35),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 300,
        height: 500,
        child: SfCartesianChart(
            title: ChartTitle(
              text: 'Наружняя влажность',
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
