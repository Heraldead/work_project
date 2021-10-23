import 'package:flutter/material.dart';

class Seconds extends StatefulWidget {
  const Seconds({Key? key}) : super(key: key);

  @override
  State<Seconds> createState() => _SecondState();
}

class _SecondState extends State<Seconds> {
  List<Widget> widgets = [
    Text('data'),
    Text('data'),
    Text('data'),
  ];
  List<Color> colors = [
    Colors.orange,
    Colors.greenAccent,
    Colors.blue,
  ];
  List<Text> text = [Text('Profile'), Text('Message'), Text('Hui')];

  int _indexnew = 0;
  @override
  Widget build(BuildContext context) {
    changeIndex(int index) {
      if (_indexnew == index) return;
      setState(() {
        _indexnew = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Center(child: text[_indexnew]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: colors[_indexnew],
        backgroundColor: Colors.grey[900],
        items: [
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'Message',
            icon: Icon(Icons.message),
          ),
          BottomNavigationBarItem(
            label: 'Music',
            icon: Icon(Icons.music_note),
          ),
        ],
        currentIndex: _indexnew,
        onTap: changeIndex,
      ),
      body: Container(
          child: Center(
        child: widgets[_indexnew],
      )),
    );
  }
}
