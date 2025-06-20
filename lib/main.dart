import 'package:flutter/material.dart';
import 'package:todoapp/home_page.dart';
import 'package:todoapp/third_Page.dart';
import 'package:todoapp/first_page.dart';
import 'package:todoapp/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage':(context) => FirstPage(),
        '/thirdpage':(context) => ThirdPage(),
        '/homepage':(context) => HomePage(),
        '/settingpage':(context) => SettingPage(),
      },
    );
  }
}
