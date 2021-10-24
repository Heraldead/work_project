import 'package:flutter/material.dart';
import 'package:flutter_aplication/resources/resources.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter = counter + 1;
          });
        },
        child: Container(
          width: 60,
          height: 60,
          child: Icon(Icons.add),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.deepPurpleAccent],
              )),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.deepPurpleAccent],
                    ),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 110.0,
                    ),
                    CircleAvatar(
                      radius: 65.0,
                      backgroundImage: AssetImage(AllImages.rick),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Микаил Тайсунов',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Ведущий эксперт',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    )
                  ]),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                      child: Card(
                          margin: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                          child: Container(
                              width: 310.0,
                              height: 290.0,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Информация",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.grey[300],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.home,
                                          color: Colors.blueAccent[400],
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Все теплицы",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            Text(
                                              "FairyTail, Magnolia",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey[400],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.auto_awesome,
                                          color: Colors.yellowAccent[400],
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Лучшее",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            Text(
                                              "Spatial & Sword Magic, Telekinesis",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey[400],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                          color: Colors.pinkAccent[400],
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Закрепленные",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            Text(
                                              "Eating cakes",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey[400],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.people,
                                          color: Colors.lightGreen[400],
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Команда",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            Text(
                                              "Team Natsu",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey[400],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )))),
                ),
              ),
            ],
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.45,
              left: 20.0,
              right: 20.0,
              child: Card(
                  child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: Column(
                      children: [
                        Text(
                          'Ошибки',
                          style: TextStyle(
                              color: Colors.grey[400], fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "$counter",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    )),
                    Container(
                      child: Column(children: [
                        Text(
                          'Дата рождения',
                          style: TextStyle(
                              color: Colors.grey[400], fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '16 апрель',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ]),
                    ),
                    Container(
                        child: Column(
                      children: [
                        Text(
                          'Возраст',
                          style: TextStyle(
                              color: Colors.grey[400], fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '19 ',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    )),
                  ],
                ),
              )))
        ],
      ),
    );
  }
}
