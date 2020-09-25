import 'package:flutter/material.dart';

class persons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.newindianexpress.com/uploads/user/imagelibrary/2020/8/31/w1200X800/Akshay-Kumar.JPG'))),
        ),
      ),
    );
  }
}
