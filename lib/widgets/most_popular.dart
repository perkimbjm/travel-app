// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:southborneo_app/model/travel.dart';
import 'package:southborneo_app/detail.dart';

class MostPopular extends StatelessWidget {
  MostPopular({super.key});
  final _list = Travel.generateMostPopular();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var travel = _list[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DetailPage(travel: travel);
              }));
            },
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child:
                        Image.asset(travel.url, width: 140, fit: BoxFit.cover)),
                Positioned(
                  bottom: 20,
                  left: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                          color: Colors.transparent,
                          child: Text(travel.location,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12))),
                      Material(
                          color: Colors.transparent,
                          child: Text(travel.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)))
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (_, index) => SizedBox(width: 15),
        itemCount: _list.length);
  }
}
