import 'package:flutter/material.dart';
import 'package:flutter_aplication/resources/resources.dart';

class TextFieldss extends StatefulWidget {
  const TextFieldss({Key? key}) : super(key: key);

  @override
  _TextFieldsState createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFieldss> {
  main_screen() {
    Navigator.of(context).pushReplacementNamed('/Main_Screen');
  }

  bool answer = true;
  obscure() {
    setState(() {
      answer = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(250, 247, 103, 78),
      ),
      body: Container(
        child: CustomMultiChildLayout(
          delegate: Positioned(),
          children: [
            LayoutId(
                id: 1,
                child: Container(
                    child: Image(
                  image: AssetImage(AllImages.loo),
                ))),
            LayoutId(
              id: 2,
              child: Container(
                width: 346,
                height: 36,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    suffixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            LayoutId(
              id: 3,
              child: Container(
                width: 346,
                height: 36,
                child: TextField(
                  obscureText: answer,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                      iconSize: 24,
                      icon: answer
                          ? Icon(Icons.remove_red_eye_outlined)
                          : Icon(Icons.remove_red_eye),
                      onPressed: obscure,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            LayoutId(
              id: 4,
              child: Container(
                  width: 120,
                  height: 36,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 247, 103, 78)),
                    ),
                    onPressed: main_screen,
                    child: Text(
                      'Welcome',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Positioned extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    final text = layoutChild(1, BoxConstraints.loose(Size(130, 130)));

    positionChild(1, Offset(size.width / 2 - text.width / 2, size.height / 20));

    final textfieldsFirst = layoutChild(2, BoxConstraints.loose(size));

    positionChild(
        2,
        Offset(
            size.width / 2 - textfieldsFirst.width / 2, size.height / 2 - 70));
    final textfieldsSecond = layoutChild(3, BoxConstraints.loose(size));

    positionChild(
        3,
        Offset(
            size.width / 2 - textfieldsFirst.width / 2, size.height / 2 - 15));

    final buttonFirst = layoutChild(4, BoxConstraints.loose(size));
    positionChild(
        4,
        Offset(size.width / 2 - buttonFirst.width / 2,
            size.height / 2 - buttonFirst.height + 90));

    // final buttonSecond = layoutChild(5, BoxConstraints.loose(size));
    // positionChild(
    //     5,
    //     Offset(size.width / 2 - buttonSecond.width / 2,
    //         size.height / 2 - buttonSecond.height + 90));

    // TODO: implement performLayout
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
