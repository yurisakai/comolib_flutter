import 'package:comolib/main.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PostState();
}

class PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("コメント投稿"),
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
          child: Stack(
        children: [
          CommentPostMenu(),
          Text("コメント投稿"),
        ],
      ) // <- (※3)
          ),
    );
  }
}
