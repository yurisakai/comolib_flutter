import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FollowAndFollowerScreen extends StatefulWidget {
  @override
  _FollowAndFollowerScreen createState() => _FollowAndFollowerScreen();
}

class _FollowAndFollowerScreen extends State<FollowAndFollowerScreen> {
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
              'フォローしている',
              style: TextStyle(fontSize: 11, color: Colors.white),
            ),
            1: Text(
              'フォローされている',
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
        title: Text('フォローしている / されている'),
        backgroundColor: Colors.blue[400],
      ),
      body: segmentedControl(),
    );
  }
}

// class FollowAndFollowerScreen extends StatefulWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('フォローしている / されている'),
//         backgroundColor: Colors.blue[400],
//       ),
//       body: segmentedControl(),
//     );
//   }

//   Widget segmentedControl() {
//     return Container(
//       padding: EdgeInsets.only(left: 10.0, right: 10.0),
//       margin: EdgeInsets.only(top: 10),
//       width: double.infinity,
//       child: CupertinoSlidingSegmentedControl(
//           groupValue: segmentedControlValue,
//           thumbColor: Colors.deepOrange,
//           backgroundColor: Colors.grey[200],
//           children: const <int, Widget>{
//             0: Text(
//               'フォローしている',
//               style: TextStyle(fontSize: 11, color: Colors.white),
//             ),
//             1: Text(
//               'フォローされている',
//               style: TextStyle(fontSize: 11, color: Colors.white),
//             )
//           },
//           onValueChanged: (value) {
//             setState(() {
//               segmentedControlValue = value;
//             });
//           }),
//     );
//   }
// }
