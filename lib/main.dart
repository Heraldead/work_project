import 'package:flutter/material.dart';
import 'package:flutter_aplication/main_branch/main_file.dart';
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
        '/SignIn': (context) => TextFields(),
        '/Welcome': (context) => Welcome(),
        '/SignUp': (context) => RegTextFields(),
        '/Sign_In': (context) => Seconds(),
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
