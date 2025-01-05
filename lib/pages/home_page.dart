import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Map<int, dynamic> _userData = {
    0: {
      'name': 'Helen',
      'time_elapsed': 21,
      'completed': false,
      'date': '12/1/2003',
      'title': 'Santorini',
      'description': 'The sky was really diffcult',
      'pace': 200
    },
    1: {
      'name': 'Larissa',
      'time_elapsed': 21,
      'completed': false,
      'date': '1/5/2025',
      'title': 'The Great Gatsby',
      'description': 'Super fun puzzle',
      'pace': 30
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, position) {
          return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                // child: Text(
                //   _userData[position]['name'].toString(),
                //   style: TextStyle(fontSize: 22.0),
                // ),
                child: Column(
                  children: [
                    Text(_userData[position]['name'].toString()),
                    Text("${_userData[position]['title']}",
                        style: TextStyle(fontSize: 30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Column(
                        children: [
                          Text("Time"),
                          Text(_userData[position]['time_elapsed'].toString())
                        ],
                      ),
                      Column(
                        children: [
                          Text("Completed"),
                          Text(_userData[position]['completed'].toString())
                        ],
                      ),
                    ]),
                  ],
                )),
          );
        },
      ),
    ));
  }
}
