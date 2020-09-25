import 'package:chat_app/screen/chat.dart';
import 'package:chat_app/screen/home.dart';
import 'package:chat_app/screen/login.dart';
import 'package:chat_app/screen/reg.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    //theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home': (context) => MyHome(),
      'reg': (context) => MyReg(),
      'login': (context) => MyLogin(),
      'chat': (context) => MyChat()
    },
  ));
}
