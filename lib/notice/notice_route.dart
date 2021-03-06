import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//aaaaaa
class Notice extends StatefulWidget {
  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  int segmentedControlValue = 0;

  Widget segmentedControl() {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      child: CupertinoSlidingSegmentedControl(
          groupValue: segmentedControlValue,
          thumbColor: Colors.deepOrange,
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
      body: segmentedControl(),
    );
  }
}
