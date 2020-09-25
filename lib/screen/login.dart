import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  var auth = FirebaseAuth.instance;
  String mail;
  String password;
  bool sspin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Here'),
      ),
      body: ModalProgressHUD(
        inAsyncCall: sspin,
        child: Center(
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
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (val) {
                    password = val;
                  },
                ),
                Material(
                  color: Colors.blue,
                  child: MaterialButton(
                      child: Text('Login'),
                      onPressed: () async {
                        try {
                          var userSignin =
                              await auth.signInWithEmailAndPassword(
                                  email: mail, password: password);
                          print(userSignin);
                          setState(() {
                            sspin = true;
                          });

                          if (userSignin != null) {
                            Navigator.pushNamed(context, "chat");
                          }
                          setState(() {
                            sspin = false;
                          });
                        } catch (e) {
                          print(e);
                        }
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
