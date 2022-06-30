import 'package:flutter/material.dart';
import 'package:flutter_chat_app_v2/helper/authenticate.dart';
import 'package:flutter_chat_app_v2/services/auth.dart';
import 'package:flutter_chat_app_v2/views/search.dart';
import 'package:flutter_chat_app_v2/views/sign_in.dart';

import '../widgets/widget.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  AutoMethods autoMethods = new AutoMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assests/images/logo.png",
          height: 50,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              autoMethods.signOut();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Authenticate()));
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.exit_to_app)),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchScreen()));
        },
        child: Icon(Icons.search),
      ),
    );
  }
}
