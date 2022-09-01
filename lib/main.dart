import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:southborneo_app/home.dart';

///sharing platform
enum Share {
  whatsapp,
  shareSystem,
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        title: 'South Borneo Trip',
        // Theme mode depends on device settings at the beginning
        themeMode: ThemeMode.system,
        darkTheme: ThemeData.dark());
  }
} //class