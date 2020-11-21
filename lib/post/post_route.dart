import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:toggle_bar/toggle_bar.dart';

// class Post extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => PostState();
// }

// class PostState extends State<Post> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("コメント投稿"),
//         backgroundColor: Colors.blue[400],
//       ),
//       body: Center(child: Text("コメント投稿") // <- (※3)
//           ),
//     );
//   }
// }

class Post extends StatefulWidget {
  Post({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  List<String> labels = ['フォロー中', '通知'];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('お知らせ'),
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ToggleBar(
              labels: labels,
              backgroundColor: Colors.grey[400],
              selectedTabColor: Colors.red[400],
              textColor: Colors.black,
              selectedTextColor: Colors.white,
              onSelectionUpdated: (index) =>
                  setState(() => currentIndex = index),
            ),
            SizedBox(
              height: 300,
            ),
            Text(
              labels[currentIndex],
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
    );
  }
}

// }
//   TabController _tabController;

//   ValueNotifier<int> _currentIndex1 = ValueNotifier<int>(0);

//   @override
//   void initState() {
//     super.initState();

//     _tabController = TabController(length: _items.length, vsync: this);
//   }

//   final List<Widget> _items = [
//     Tab(text: '111'),
//     Tab(text: '222'),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ValueListenableBuilder(
//               valueListenable: _currentIndex1,
//               builder: (BuildContext context, int index, Widget widget) {
//                 return Text('$index');
//               },
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.orange[900],
//                 borderRadius: BorderRadius.circular(_radius),
//               ),
//               child: TabBar(

//                   // controller: _tabController,
//                   // labelColor: Colors.black,
//                   // unselectedLabelColor: Colors.white,
//                   // tabs: _items,
//                   // indicator: RectangularIndicator(
//                   //   color: Colors.orange[100],
//                   //   topLeftRdadius: _radius,
//                   //   topRightRadius: _radius,
//                   //   bottomLeftRadius: _radius,
//                   //   bottomRightRadius: _radius,
//                   //   horizontalPadding: 4,
//                   //   verticalPadding: 4,
//                   // ),
//                   // onTap: (int index){
//                   //   _currentIndex1.value = index;
//                   // },
//                   ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
