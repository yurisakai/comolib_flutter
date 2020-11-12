import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyPageState();
}

class MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("マイページ"),
        backgroundColor: Colors.blue[400],
      ),
      body: Center(child: Text("マイページ") // <- (※3)
          ),
    );
  }
}
