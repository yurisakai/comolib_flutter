import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int segmentedControlValue = 0;

  Widget segmentedControl() {
    return Container(
      width: 300,
      child: CupertinoSlidingSegmentedControl(
          groupValue: segmentedControlValue,
          thumbColor: Colors.deepOrange,
          // pressedColor: Colors.white,
          backgroundColor: Colors.grey[200],
          children: const <int, Widget>{
            0: Text(
              'フォロー中',
              style: TextStyle(fontSize: 11, color: Colors.white),
            ),
            1: Text(
              '通知',
              style: TextStyle(fontSize: 11, color: Colors.white),
            )
          },
          onValueChanged: (value) {
            setState(() {
              segmentedControlValue = value;
            });
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('マイページ'),
        backgroundColor: Colors.blue[400],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 50),
        child: segmentedControl(),
      ),
    );
  }
}
