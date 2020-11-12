import 'package:flutter/material.dart';
import 'header.dart';
import 'root.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),   ⬅︎ダークモードにする方法
      //右上に表示される debug のバナーを消す方法
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
      ),
      home: RootWidget(),
    );
  }
}
