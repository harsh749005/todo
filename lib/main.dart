import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["Mitch", "Sharon", "Vince"];
  void userTapped(){
    print("User Tapped!");
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "My App Bar",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
          centerTitle: true,

          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Center(
          child: GestureDetector(
            onTap: userTapped,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.pink,
              child: Center(child: Text("Tap me!")),
            ),
          ),
        ),
      ),
    );
  }
}
