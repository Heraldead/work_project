// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aplication/resources/resources.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _TextFieldsState createState() => _TextFieldsState();
}

class _TextFieldsState extends State<Welcome> {
  void signUp() {
    Navigator.of(context).pushNamed('/SignIn');
  }

  signin() {
    Navigator.of(context).pushNamed('/SignUp');
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
      body: Container(
        child: CustomMultiChildLayout(
          delegate: Positioned(),
          children: [
            LayoutId(
                id: 1,
                child: Container(
                    child: Image(
                  image: AssetImage(AllImages.green),
                ))),
            LayoutId(
                id: 2,
                child: Container(
                  child: Text(
                    'Your greenhouse in your house',
                    style: TextStyle(color: Color.fromARGB(170, 50, 205, 255)),
                  ),
                )),
            LayoutId(
              id: 3,
              child: Container(
                  width: 346,
                  height: 40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(250, 247, 103, 78))),
                    onPressed: signUp,
                    child: Text('Get started'),
                  )),
            ),
            LayoutId(
              id: 4,
              child: Container(
                  width: 346,
                  height: 36,
                  child: TextButton(
                    onPressed: signin,
                    child: Text(
                      'Join the ecosystem',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
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
    final text = layoutChild(1, BoxConstraints.loose(Size(300, 150)));

    positionChild(1, Offset(size.width / 2 - text.width / 2, size.height / 5));

    final textfieldsFirst = layoutChild(2, BoxConstraints.loose(size));

    positionChild(
        2,
        Offset(
            size.width / 2 - textfieldsFirst.width / 2, size.height / 2 - 60));
    final textfieldsSecond = layoutChild(3, BoxConstraints.loose(size));

    positionChild(3,
        Offset(size.width / 2 - textfieldsSecond.width / 2, size.height / 2));

    final buttonFirst = layoutChild(4, BoxConstraints.loose(size));
    positionChild(
        4,
        Offset(size.width / 2 - buttonFirst.width / 2,
            size.height - buttonFirst.height - 30));

    // TODO: implement performLayout
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}

class Hui extends StatelessWidget {
  const Hui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
