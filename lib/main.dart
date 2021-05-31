import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFE)),
      home: (Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Login Flutter Page")),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 500,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email/Phone number'),
                  ),
                ),
                Container(
                  width: 500,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Password'),
                  ),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Login")),
                Container(child: Text("Lost your Password?")),
                ElevatedButton(onPressed: () {}, child: Text("Sign up")),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
