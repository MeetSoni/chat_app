import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';

class MyReg extends StatefulWidget {
  @override
  _MyRegState createState() => _MyRegState();
}

class _MyRegState extends State<MyReg> {
  var auth = FirebaseAuth.instance;
  String mail;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Here'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: 'email id',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (val) {
                  mail = val;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                obscureText: true,
                onChanged: (val) {
                  password = val;
                },
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                elevation: 10,
                child: MaterialButton(
                  child: Text('Submit'),
                  onPressed: () async {
                    try {
                      var user = await auth.createUserWithEmailAndPassword(
                          email: mail, password: password);
                      print(user);
                      if (user.additionalUserInfo.isNewUser == true) {
                        Navigator.pushNamed(context, 'chat');
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
