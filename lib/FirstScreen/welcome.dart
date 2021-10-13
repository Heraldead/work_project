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
    Navigator.of(context).pushNamed('/SignUp');
  }

  signin() {
    Navigator.of(context).pushNamed('/SignIn');
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
                  image: AssetImage(AllImages.intersect),
                ))),
            LayoutId(
              id: 2,
              child: Text(
                'Welcome!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            LayoutId(
              id: 3,
              child: Container(
                  width: 346,
                  height: 36,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: signUp,
                    child: Text('Create an account'),
                  )),
            ),
            LayoutId(
              id: 4,
              child: Container(
                  width: 346,
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(3)),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: signin,
                    child: Text(
                      'I already have an account',
                      style: TextStyle(color: Colors.black),
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
    final text = layoutChild(1, BoxConstraints.loose(size));

    positionChild(1, Offset(size.width / 2 - text.width / 2, size.height / 6));

    final textfieldsFirst = layoutChild(2, BoxConstraints.loose(size));

    positionChild(
        2,
        Offset(
            size.width / 2 - textfieldsFirst.width / 2, size.height / 2 - 120));
    final textfieldsSecond = layoutChild(3, BoxConstraints.loose(size));

    positionChild(
        3,
        Offset(
            size.width / 2 - textfieldsSecond.width / 2, size.height / 2 - 55));

    final buttonFirst = layoutChild(4, BoxConstraints.loose(size));
    positionChild(
        4,
        Offset(size.width / 2 - buttonFirst.width / 2,
            size.height / 2 - buttonFirst.height + 40));

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
