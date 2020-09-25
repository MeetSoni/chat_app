import 'package:chat_app/insidechat/friends.dart';
import 'package:chat_app/insidechat/hometab.dart';
import 'package:chat_app/insidechat/menu.dart';
import 'package:chat_app/insidechat/person.dart';
//import 'package:chat_app/insidechat/video.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class MyChat extends StatefulWidget {
  @override
  _MyChatState createState() => _MyChatState();
}

class _MyChatState extends State<MyChat> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Facebook chat'),
          actions: <Widget>[
            Icon(Icons.search),
            IconButton(
                icon: Image(
                    image: NetworkImage(
                        'https://s.clipartkey.com/mpngs/s/44-448719_facebook-messenger-clipart-facebook-messenger-logo.png')),
                onPressed: null)
          ],
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(
              icon: Icon(Icons.people),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
            Tab(
              icon: Icon(Icons.menu),
            )
          ]),
        ),
        body: TabBarView(children: [
          home(),
          friend(),
          // videogall(),
          persons(),
          mymenu()

          // Icon(Icons.home),
          // Icon(Icons.people),
          //Icon(Icons.video_library),
          //Icon(Icons.person),
          //Icon(Icons.menu)
        ]),
      ),
    );
  }
}

/*
class MyChat extends StatefulWidget {
  @override
  _MyChatState createState() => _MyChatState();
}

class _MyChatState extends State<MyChat> {
  var auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Chat App'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () async {
                await auth.signOut();
                Navigator.pushNamed(context, 'login');
              })
        ],
      ),
      body: RaisedButton(
        onPressed: () {
          try {
            var user = auth.currentUser;
            print(user.email);
          } catch (e) {
            print(e);
          }
        },
        child: Text('click to know who u r'),
      ),
    );
  }
}
*/
