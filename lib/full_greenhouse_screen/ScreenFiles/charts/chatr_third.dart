import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class GreenHouseChart_third extends StatefulWidget {
  const GreenHouseChart_third({Key? key}) : super(key: key);

  @override
  State<GreenHouseChart_third> createState() => _GreenHouseChartState();
}

class _GreenHouseChartState extends State<GreenHouseChart_third> {
  final List<SalesData> chartData = [
    SalesData(1, 37),
    SalesData(2, 12),
    SalesData(3, 23),
    SalesData(4, 32),
    SalesData(5, 28),
    SalesData(6, 42),
    SalesData(7, 23),
    SalesData(8, 28),
    SalesData(9, 34),
    SalesData(10, 35),
    SalesData(11, 28),
    SalesData(12, 34),
    SalesData(13, 35),
    SalesData(14, 31),
    SalesData(15, 28),
    SalesData(16, 34),
    SalesData(17, 35),
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
              text: 'Наружная температура',
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
