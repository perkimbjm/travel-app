import 'package:flutter/material.dart';
import 'package:southborneo_app/detail.dart';
import 'package:southborneo_app/home.dart';
import 'package:southborneo_app/model/travel.dart';

class ViewAll extends StatelessWidget {
  ViewAll({Key? key}) : super(key: key);
  final _list = Travel.generateViewAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('All South Borneo Destination',
            style: TextStyle(fontSize: 20)),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()))),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Travel travel = _list[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(travel: travel);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(travel.url,
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        fit: BoxFit.cover),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            travel.name,
                            style: const TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(travel.location),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: _list.length,
      ),
    );
  }
}
