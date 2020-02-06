import 'package:flutter/material.dart';
import 'login_signup_page.dart';
import 'practice.dart';
import 'data.dart';

void main() => runApp(new MyApp());

Data data = new Data();

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Login Demo',
      theme: new ThemeData(
        appBarTheme: AppBarTheme(
     color: Color.fromARGB(255, 185, 219, 142),
  )),
      //home: new LoginSignupPage()
      home : new Practice()
    );
  }
}
