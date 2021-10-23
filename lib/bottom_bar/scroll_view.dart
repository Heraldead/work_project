import 'package:flutter/material.dart';
import 'package:flutter_aplication/resources/resources.dart';

class Greenhouse {
  final String name;
  final String sensor;
  final String description;

  Greenhouse(
      {required this.name, required this.sensor, required this.description});
}

class ScrollViewS extends StatefulWidget {
  ScrollViewS({Key? key}) : super(key: key);

  @override
  State<ScrollViewS> createState() => _ScrollViewSState();
}

class _ScrollViewSState extends State<ScrollViewS> {
  final _houses = [
    Greenhouse(
        name: 'Теплица #A',
        sensor: '3-2-4-0-0',
        description: 'В данной теплице растет гашиш и марихуана'),
    Greenhouse(
        name: 'Теплица #B',
        sensor: '2-3-5-0-0',
        description: 'Выращиваются фрукты с Восточной Европы'),
    Greenhouse(
        name: 'Теплица #C',
        sensor: '6-0-9-0-17',
        description: 'Растут бананы,яблоки и груши'),
    Greenhouse(
        name: 'Теплица #D',
        sensor: '28-0-23-0-1',
        description: 'Растения отобрынные для скрещивания'),
    Greenhouse(
        name: 'Теплица #E',
        sensor: '0-3-2-4-0',
        description: 'Селекционные растения'),
  ];
  var _filterredhouses = <Greenhouse>[];

  final _searchcontroller = TextEditingController();

  void searchhouses() {
    final query = _searchcontroller.text;
    if (query.isNotEmpty) {
      _filterredhouses = _houses.where((Greenhouse house) {
        return house.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filterredhouses = _houses;
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _filterredhouses = _houses;
    _searchcontroller.addListener(searchhouses);
  }

  // void _onHouseTap(int index) {
  //   Navigator.of(context);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('GreenHouse')),
        backgroundColor: Colors.green[600],
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: ListView.builder(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding: EdgeInsets.only(top: 60),
                physics: BouncingScrollPhysics(),
                itemCount: _filterredhouses.length,
                itemExtent: 163,
                itemBuilder: (
                  BuildContext context,
                  int index,
                ) {
                  final ghouse = _filterredhouses[index];
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Stack(
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  offset: Offset(3, 3),
                                ),
                              ],
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 25),
                                child:
                                    Image(image: AssetImage(AllImages.teplica)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      ghouse.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      ghouse.sensor,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      ghouse.description,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            // onTap: () => _onHouseTap(index),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 13),
            child: Container(
              height: 50,
              child: TextField(
                controller: _searchcontroller,
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(
                  hoverColor: Colors.green,
                  labelText: 'Поиск',
                  suffixIcon: Icon(Icons.search_outlined),
                  filled: true,
                  hintText: 'Поиск теплицы: #name',
                  hintMaxLines: 1,
                  fillColor: Colors.white.withAlpha(235),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
