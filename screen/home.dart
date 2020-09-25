import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //  title: Text('Facebook'),
      //  ),
      body: Center(
        child: Container(
          //height: 200,
          // width: 200,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                  'https://1000logos.net/wp-content/uploads/2016/11/Facebook-Logo.png',
                ))),
              ),
              SizedBox(
                height: 50,
              ),
              Material(
                color: Colors.blue,
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'reg');
                    print('send...');
                  },
                  child: Text('Register'),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Material(
                color: Colors.blue,
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                    print('send...');
                  },
                  child: Text('Login'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
