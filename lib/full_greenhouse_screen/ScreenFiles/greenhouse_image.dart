import 'package:flutter/material.dart';
import 'package:flutter_aplication/resources/resources.dart';
import 'package:gradients/gradients.dart';

class GreenHouseImage extends StatelessWidget {
  const GreenHouseImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.cyan],
          ),
        ),
        child: Column(children: [
          SizedBox(
            height: 50.0,
          ),
          CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage(AllImages.cat),
            backgroundColor: Colors.white,
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text('Erza Scarlet',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                )),
          ),
          SizedBox(
            height: 50.0,
          ),
        ]));
  }
}
// AssetImage(AllImages.bastion)