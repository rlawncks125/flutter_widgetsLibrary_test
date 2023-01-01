import 'dart:developer';
// import 'dart:html';


import 'package:flutter/material.dart';
import 'package:test2/Dropdown.dart';
import 'package:test2/FirstRoute.dart';
import 'package:test2/Home.dart';
import 'package:test2/ToggleTest.dart';


void main() {
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',         
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.amber,
      ),      
      // home: const MyHomePage(title:  'test 입니다. ㅎ2ㅎ'),
      // home: const FirstRoute(),
      // home: const ToggleTest(title: "토글 테스트 입니다."),
      home: const Dropdown(),

    );
  }
}


