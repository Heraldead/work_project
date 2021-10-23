import 'package:flutter/material.dart';
import 'package:flutter_aplication/bottom_bar/main_file.dart';
import 'package:flutter_aplication/user_profile/user_profile.dart';
import 'Login&Reg/signin.dart';
import 'Login&Reg/signup.dart';
import 'FirstScreen/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Enter': (context) => TextFieldss(),
        '/Welcome': (context) => Welcome(),
        '/Registration': (context) => RegTextFields(),
        '/Main_Screen': (context) => Seconds(),
      },
      initialRoute: '/Welcome',
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
