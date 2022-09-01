// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:southborneo_app/view_all.dart';
import 'package:southborneo_app/widgets/most_popular.dart';
import 'widgets/south_borneo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('South Borneo Destination',
            style: TextStyle(fontSize: 20)),
        elevation: 0,
        actions: [
          IconButton(
              icon: const Icon(Icons.lightbulb, color: Colors.white),
              onPressed: () {
                Get.isDarkMode
                    ? Get.changeTheme(ThemeData.light())
                    : Get.changeTheme(ThemeData.dark());
              })
        ],
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10, top: 10, right: 120),
            child: Text(
              'What you would like to trip ?',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(flex: 2, child: SouthBorneo()),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Most Popular',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                    child: Text('View All',
                        style:
                            TextStyle(fontSize: 14, color: Colors.deepOrange)),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => ViewAll()));
                    })
              ],
            ),
          ),
          Expanded(flex: 1, child: MostPopular()),
        ],
      )),
    );
  }
}
