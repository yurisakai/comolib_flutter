import 'package:comolib/mypage/mypage_profile.dart';
import 'package:flutter/material.dart';

//sss
class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyPageState();
}

class MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar();
    return Scaffold(
      appBar: AppBar(
        title: Text("マイページ"),
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Container(
              //   width: double.infinity,
              //   //　全体の 1/3 の大きさに設定
              //   height: (MediaQuery.of(context).size.height -
              //           appBar.preferredSize.height) /
              //       3,
              //   // height: 300,
              //   color: Colors.red,

              Stack(
                children: [
                  Container(
                    color: Colors.orange,
                    //　全体の 1/3 の大きさに設定
                    height: (MediaQuery.of(context).size.height -
                            appBar.preferredSize.height) /
                        4,

                    width: double.infinity,
                    // child: Image(image: null),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      height: 90.0, width: 90.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2020/11/03/23/55/cookies-5711139_1280.jpg'),
                          ),
                          shape: BoxShape.circle),
                      // color: Colors.red,
                      // child: CircleAvatar(
                      //   radius: 50.0,
                      //   backgroundImage: NetworkImage(
                      //       'https://cdn.pixabay.com/photo/2020/11/03/23/55/cookies-5711139_1280.jpg'),
                      //   backgroundColor: Colors.transparent,
                      //   // ),
                      // ),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Flexible(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(color: Colors.deepOrange, width: 3),
                      )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // color: Colors.blue,
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                Icon(
                                  Icons.directions_walk,
                                  color: Colors.deepOrange,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('行った'),
                                    Text(
                                      '3',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey[600],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(color: Colors.yellow[700], width: 3),
                      )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // color: Colors.blue,
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                Icon(
                                  Icons.attach_file,
                                  color: Colors.yellow[700],
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('行きたい'),
                                    Text(
                                      '4',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey[600],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 8),
              ListView(
                padding: EdgeInsets.all(10),
                shrinkWrap: true,
                children: [
                  _setting('プロフィール', Icon(Icons.navigate_next)),
                  _setting('フォローしている / されている', Icon(Icons.navigate_next)),
                  _setting('設定', Icon(Icons.navigate_next)),
                  _setting('登録されていない施設を登録する', Icon(Icons.navigate_next)),
                  _setting('利用規約', Icon(Icons.navigate_next)),
                  _setting('プライバシーポリシー', Icon(Icons.navigate_next)),
                ],
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.all(15),
                width: double.infinity,
                child: FlatButton(
                  child: Text(
                    'ログアウト',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.grey[400],
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _setting(String title, Icon icon) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1.0, color: Colors.grey[400])),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: icon,
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<Null>(
              builder: (BuildContext context) => ProfilEditeScreen()),
        );
      },
    );
  }
}

// decoration: BoxDecoration(
//     border: Border(
//         top: BorderSide(width: 1.0, color: Colors.grey[300]),
//         bottom: BorderSide(width: 1.0, color: Colors.grey[300]))),
// child: Column(
//   children: [
//     ListTile(
//       trailing: Icon(Icons.navigate_next),
//       title: Text('プロフィール'),
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute<Null>(
//               builder: (BuildContext context) => ProfilEditeScreen()),
//         );
//       },
//     ),
//     Container(
//       child: ListTile(
//         trailing: Icon(Icons.navigate_next),
//         title: Text('フォローしている / されている'),
//         onTap: () {},
//       ),
//     ),
//     ListTile(
//       trailing: Icon(Icons.navigate_next),
//       title: Text('設定'),
//       onTap: () {},
//     ),
//     ListTile(
//       trailing: Icon(Icons.navigate_next),
//       title: Text('登録されていない施設を報告する'),
//       onTap: () {},
//     ),
//     ListTile(
//       trailing: Icon(Icons.navigate_next),
//       title: Text('利用規約'),
//       onTap: () {},
//     ),
//     ListTile(
//       trailing: Icon(Icons.navigate_next),
//       title: Text('プライバシーポリシー'),
//       onTap: () {},
//     ),
//   ],
// ),
