// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegTextFields extends StatefulWidget {
  const RegTextFields({Key? key}) : super(key: key);

  @override
  _TextFieldsState createState() => _TextFieldsState();
}

class _TextFieldsState extends State<RegTextFields> {
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
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Container(
        child: CustomMultiChildLayout(
          delegate: Positioned(),
          children: [
            LayoutId(
              id: 1,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            LayoutId(
              id: 2,
              child: Container(
                width: 346,
                height: 36,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    suffixIcon: Icon(Icons.person_outlined),
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
                  decoration: InputDecoration(
                    labelText: 'Birthday',
                    suffixIcon: Icon(Icons.calendar_today_outlined),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            LayoutId(
              id: 4,
              child: Container(
                width: 346,
                height: 36,
                child: TextField(
                  obscureText: answer,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    suffixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            LayoutId(
              id: 5,
              child: Container(
                width: 346,
                height: 36,
                child: TextField(
                  obscureText: answer,
                  decoration: InputDecoration(
                    labelText: 'Old password',
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            LayoutId(
              id: 6,
              child: Container(
                width: 346,
                height: 36,
                child: TextField(
                  obscureText: answer,
                  decoration: InputDecoration(
                    labelText: 'Confirm password',
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    // suffixIcon: IconButton(
                    //   padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    //   iconSize: 24,
                    //   icon: Icon(Icons.remove_red_eye_outlined),
                    //   onPressed: () {},
                    // ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            LayoutId(
              id: 7,
              child: Container(
                  width: 120,
                  height: 36,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
            LayoutId(
              id: 8,
              child: Container(
                  width: 120,
                  height: 36,
                  child: TextButton(
                    onPressed: signin,
                    child: Text(
                      'Sign In',
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
    positionChild(1, Offset(size.width / 2 - text.width / 2, size.height / 8));

    final username = layoutChild(2, BoxConstraints.loose(size));
    positionChild(
        2, Offset(size.width / 2 - username.width / 2, size.height / 2 - 120));

    final birthday = layoutChild(3, BoxConstraints.loose(size));
    positionChild(
        3, Offset(size.width / 2 - birthday.width / 2, size.height / 2 - 55));

    final email = layoutChild(4, BoxConstraints.loose(size));
    positionChild(
        4, Offset(size.width / 2 - email.width / 2, size.height / 2 + 15));

    final oldpassword = layoutChild(5, BoxConstraints.loose(size));
    positionChild(5,
        Offset(size.width / 2 - oldpassword.width / 2, size.height / 2 + 80));

    final confirm_password = layoutChild(6, BoxConstraints.loose(size));
    positionChild(
        6,
        Offset(size.width / 2 - confirm_password.width / 2,
            size.height / 2 + 145));

    final buttonFirst = layoutChild(7, BoxConstraints.loose(size));
    positionChild(
        7,
        Offset(size.width / 2 - buttonFirst.width / 2,
            size.height / 2 - buttonFirst.height + 260));

    final buttonSecond = layoutChild(8, BoxConstraints.loose(size));
    positionChild(
        8,
        Offset(size.width / 2 - buttonSecond.width / 2,
            size.height / 2 - buttonSecond.height + 300));

    // TODO: implement performLayout
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
