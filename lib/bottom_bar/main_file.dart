import 'package:flutter/material.dart';
import 'package:flutter_aplication/bottom_bar/scroll_view.dart';
import 'package:flutter_aplication/user_profile/user_profile.dart';

class Seconds extends StatefulWidget {
  const Seconds({Key? key}) : super(key: key);

  @override
  State<Seconds> createState() => _SecondState();
}

class _SecondState extends State<Seconds> {
  List<Color> colors = [
    Colors.blue,
    Colors.greenAccent,
    Colors.deepOrangeAccent,
  ];
  List<Text> text = [Text('Profile'), Text('Greenhouse'), Text('History')];

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
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: colors[_indexnew],
          backgroundColor: Colors.grey[900],
          items: [
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: 'Greenhouse',
              icon: Icon(Icons.house_siding_outlined),
            ),
            BottomNavigationBarItem(
              label: 'History',
              icon: Icon(Icons.restore_outlined),
            ),
          ],
          currentIndex: _indexnew,
          onTap: changeIndex,
        ),
        body: IndexedStack(
          index: _indexnew,
          children: [
            Profile(),
            ScrollViewS(),
          ],
        ));
  }
}
