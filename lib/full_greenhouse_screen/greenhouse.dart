import 'package:flutter/material.dart';
import 'package:flutter_aplication/full_greenhouse_screen/ScreenFiles/greenhouse_chart.dart';
import 'package:flutter_aplication/full_greenhouse_screen/ScreenFiles/greenhouse_image.dart';
import 'package:flutter_aplication/full_greenhouse_screen/ScreenFiles/greenhouse_widgets.dart';

class GreenHouse extends StatefulWidget {
  final int id;
  GreenHouse({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  _GreenHouseState createState() => _GreenHouseState();
}

class _GreenHouseState extends State<GreenHouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GreenHouseImage(),
          GreenHouseChart(),
          GreenHouseWidgets(),
        ],
      ),
    );
  }
}
