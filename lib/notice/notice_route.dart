import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

//aaaaaa
class Notice extends StatefulWidget {
  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('お知らせ'),
            elevation: 0.0,
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: MediaQuery.of(context).size.width / 0.1,
                  child: TabBar(
                      unselectedLabelColor: Colors.grey[350],
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.red[400]),
                      tabs: [
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                border: Border.all(
                                    color: Colors.red[400], width: 1)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('フォロー中'),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                border: Border.all(
                                    color: Colors.red[400], width: 1)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('通知'),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: Container(
                color: Colors.white,
                child: Text(
                  "フォロー中",
                  style: TextStyle(fontSize: 22, color: Colors.blue),
                ),
              ),
            ),
            Center(
              child: Container(
                color: Colors.white,
                child: Text(
                  "通知",
                  style: TextStyle(fontSize: 22, color: Colors.blue),
                ),
              ),
            ),
          ]),
        ));
  }
}

// class Notice extends StatefulWidget {
//   const Notice({Key key}) : super(key: key);
//   @override
//   _NoticeState createState() => _NoticeState();
// }

// class _NoticeState extends State<Notice> with SingleTickerProviderStateMixin {
//   final List<Tab> myTabs = <Tab>[Tab(text: 'フォロー中'), Tab(text: '通知')];

//   TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(vsync: this, length: myTabs.length);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey[300],
//         title: Text('お知らせ'),
//         bottom: TabBar(
//           controller: _tabController,
//           tabs: myTabs,
//         ),
//       ),

//       body: TabBarView(
//         controller: _tabController,
//         children: myTabs.map((Tab tab) {
//           return Center(
//               child: Text(
//             tab.text,
//             style: TextStyle(fontSize: 20.0),
//           ));
//         }).toList(),
//       ),
//       FlutterToggleTab(
//   width: 90,
//   borderRadius: 30,
//   height: 50,
//   initialIndex:0,
//   selectedColors: [Colors.blue],
//   selectedTextStyle: TextStyle(
//     color: Colors.white,
//     fontSize: 18,
//     fontWeight: FontWeight.w700),
//   unSelectedTextStyle: TextStyle(
//     color: Colors.black87,
//     fontSize: 14,
//     fontWeight: FontWeight.w500),
//   labels: ["Tab A (10)", "Tab B (6)", "Tab C (9)"],
//   selectedLabelIndex: (index) {
// 	print("Selected Index $index");
//   },
// ),
//     );
//   }

// }
