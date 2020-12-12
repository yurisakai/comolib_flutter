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
      // builder: (context, child) => Stack(
      //   children: [child, CommentPostMenu()],
      // ),
      title: 'Flutter Demo',
      //右上に表示される debug のバナーを消す方法
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),   ⬅︎ダークモードにする方法

      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
      ),
      home: RootWidget(),
    );
  }
}

class CommentPostMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return SizedBox.shrink();
    return Opacity(
      opacity: 0.6,
      child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        onPressed: () {},
                        child: Text('コメント投稿'),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        child: Text('コメント投稿'),
                      ),
                    ],
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('コメント投稿'),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
