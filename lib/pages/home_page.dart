import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Map<int, dynamic> _userData = {
    0: {
      'name': 'Helen',
      'time_elapsed': 21,
      'completed': false,
      'start_date': DateTime.utc(2003,12,1),
      'title': 'Santorini',
      'description': 'The sky was really diffcult',
      'pace': 200
    },
    1: {
      'name': 'Larissa',
      'time_elapsed': 21,
      'completed': false,
      'start_date': DateTime.utc(2025,1,5),
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
            color: Theme.of(context).colorScheme.surface,
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(_userData[position]['name'].toString(),
                        style: TextStyle(fontWeight: FontWeight.w700)),
                    Text("Started on: ${_userData[position]['start_date']}",
                        style: TextStyle(fontSize:10)),
                    Text("${_userData[position]['title']}",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700)),
                    Text(_userData[position]['description'].toString()),
                    SizedBox(height: 10),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("Time"),
                              Text(
                                _userData[position]['time_elapsed'].toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text("Completed"),
                              Text(
                                _userData[position]['completed'] ? 'Completed' :'In Progress',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text("Pace"),
                              Text(
                                '${_userData[position]['pace'].toString()} /hour',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              )
                            ],
                          ),
                          Spacer(),
                        ]),
                  ],
                )),
          );
        },
      ),
    ));
  }
}
