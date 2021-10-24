import 'package:flutter/material.dart';

class GreenHouseWidgets extends StatelessWidget {
  const GreenHouseWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 290,
      child: Several(),
    );
  }
}

class BetweenClass {
  final String? name;
  final String? surname;
  final Color? color_name;
  final Color? color_surname;
  final IconData? icon;
  final Color? container_color;

  BetweenClass({
    this.name,
    this.surname,
    this.color_name,
    this.color_surname,
    this.icon,
    this.container_color,
  });
}
// light outside
// humidity outside
// temperature outside
// soil humidity
// soil temperature

class Several extends StatelessWidget {
  final List<BetweenClass> names = [
    BetweenClass(
      name: 'Наруж-яя влажность',
      surname: '69',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.air_outlined,
      container_color: Colors.grey[300],
    ),
    BetweenClass(
      name: 'Уровень света',
      surname: '17',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.wb_sunny_outlined,
      container_color: Colors.grey[300],
    ),
    BetweenClass(
      name: 'Нар-я темература',
      surname: '15',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.device_thermostat_outlined,
      container_color: Colors.grey[300],
    ),
    BetweenClass(
      name: 'Внут-яя температура',
      surname: '69',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.device_thermostat_outlined,
      container_color: Colors.grey[300],
    ),
    BetweenClass(
      name: 'Внут-яя влажность',
      surname: '69',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.air_outlined,
      container_color: Colors.grey[300],
    ),
  ];
  Several({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> answer = names
        .map((BetweenClass widget) => Main(
              name: widget.name,
              surname: widget.surname,
              color_name: widget.color_name,
              color_surname: widget.color_surname,
              icon: widget.icon,
              container_color: widget.container_color,
            ))
        .toList();
    return Container(
      margin: EdgeInsets.only(bottom: 100),
      width: double.infinity,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: answer,
      ),
    );
  }
}

class Main extends StatelessWidget {
  final String? name;
  final String? surname;
  final Color? color_name;
  final Color? color_surname;
  final IconData? icon;
  final Color? container_color;
  Main({
    Key? key,
    this.name,
    this.surname,
    this.color_name,
    this.color_surname,
    this.icon,
    this.container_color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 250,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color: container_color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          child: CustomMultiChildLayout(
            delegate: Position(),
            children: [
              LayoutId(
                  id: 1,
                  child: Text(
                    '$name',
                    maxLines: 1,
                    style: TextStyle(
                      color: color_name,
                      fontSize: 12,
                    ),
                  )),
              LayoutId(
                  id: 2,
                  child: Text('$surname%',
                      style: TextStyle(color: color_surname, fontSize: 24))),
              LayoutId(
                  id: 3,
                  child: Icon(
                    icon,
                    size: 50,
                  )),
            ],
          ),
        ));
  }
}

class Position extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    final minFirstChildWidth =
        layoutChild(1, BoxConstraints.loose(size)); //give name

    final minSecondChildWidth =
        layoutChild(2, BoxConstraints.loose(size)); //give surname

    final minThirdChildWidth =
        layoutChild(3, BoxConstraints.loose(size)); //give icon

    //////////<Children Position>/////////////////

    positionChild(
      1,
      Offset(size.width / 2 - minFirstChildWidth.width / 2, size.height - 36),
    );
    positionChild(
        2,
        Offset(
            size.width / 2 - minSecondChildWidth.width / 2, size.height - 82));
    positionChild(
        3,
        Offset(size.width / 2 - minThirdChildWidth.width / 2,
            size.height / 2 - minThirdChildWidth.height - 14));
    // TODO: implement performLayout
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}

class Buttons extends StatefulWidget {
  Buttons({Key? key}) : super(key: key);

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  _secondwidget() {
    Navigator.of(context).pushNamed('/second');
  }

  String name = 'Перейти на другой экран';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: _secondwidget,
            child: Text('$name'),
          ),
          SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}

class IButton extends StatefulWidget {
  const IButton({Key? key}) : super(key: key);

  @override
  _IButtonState createState() => _IButtonState();
}

class _IButtonState extends State<IButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: CustomMultiChildLayout(delegate: IButtonDelegate(), children: [
        LayoutId(
            id: 1,
            child: IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: Icon(Icons.person_add_alt_1_rounded),
            )),
        LayoutId(
            id: 2,
            child: IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: Icon(Icons.mail),
            )),
        LayoutId(
            id: 3,
            child: IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: Icon(Icons.add_location),
            )),
        LayoutId(
            id: 4,
            child: IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: Icon(Icons.search),
            )),
        LayoutId(
            id: 5,
            child: IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: Icon(Icons.settings),
            )),
        LayoutId(
            id: 6,
            child: IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: Icon(Icons.send),
            )),
      ]),
    );
  }
}

class IButtonDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    layoutChild(1, BoxConstraints.loose(size));
    layoutChild(2, BoxConstraints.loose(size));
    layoutChild(3, BoxConstraints.loose(size)); // TODO: implement performLayout
    layoutChild(4, BoxConstraints.loose(size));
    layoutChild(5, BoxConstraints.loose(size));
    layoutChild(6, BoxConstraints.loose(size));
    positionChild(1, Offset(0, 0));
    positionChild(2, Offset(68.5, 0));
    positionChild(3, Offset(137, 0));
    positionChild(4, Offset(205.5, 0));
    positionChild(5, Offset(274, 0));
    positionChild(6, Offset(342.5, 0));
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
