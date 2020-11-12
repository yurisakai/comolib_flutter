import 'package:flutter/material.dart';
import 'header.dart';
import 'footer.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //画面をダークテーマにする方法
        theme: ThemeData.dark(),
        //右上に表示される debug のバナーを消す方法
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: Header(),
            body: Center(child: Text('オラオラオラ')),
            bottomNavigationBar: Footer()));
  }
}
