import 'package:flutter/material.dart';
import 'package:flutter_aplication/full_greenhouse_screen/ScreenFiles/charts/chatr_five.dart';
import 'package:flutter_aplication/full_greenhouse_screen/ScreenFiles/charts/chatr_four.dart';
import 'package:flutter_aplication/full_greenhouse_screen/ScreenFiles/charts/chatr_second.dart';
import 'package:flutter_aplication/full_greenhouse_screen/ScreenFiles/charts/chatr_third.dart';
import 'package:flutter_aplication/full_greenhouse_screen/ScreenFiles/charts/greenhouse_chart.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Container(
              height: 50,
              child: Center(
                  child: Text(
                'Показания датчиков',
                style:
                    TextStyle(fontSize: 18, backgroundColor: Colors.grey[300]),
              )),
            ),
          ),
          GreenHouseWidgets(),
          GreenHouseChart(),
          GreenHouseChart_second(),
          GreenHouseChart_third(),
          GreenHouseChart_four(),
          GreenHouseChart_five(),
        ],
      ),
    );
  }
}
