import 'package:flutter/material.dart';

class friend extends StatelessWidget {
  List<String> students = [
    'akshay kumar',
    'siddharth',
    'bacchan',
    'ajay',
    'varun'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: students.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(students[index]),
                  //subtitle: Text('id of student'),
                  // leading: Icon(Icons.accessibility),
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  trailing: Material(
                    borderRadius: BorderRadius.circular(50),
                    child: MaterialButton(
                      child: Icon(Icons.timeline),
                      onPressed: () {
                        //Navigator.pushNamed(context, "/vimal");
                      },
                    ),
                  ),
                ),
              );
            }));
  }
}
