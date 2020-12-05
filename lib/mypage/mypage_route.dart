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
              Container(
                width: double.infinity,
                //　全体の 1/3 の大きさに設定
                height: (MediaQuery.of(context).size.height -
                        appBar.preferredSize.height) /
                    3,
                color: Colors.red,
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/11/03/23/55/cookies-5711139_1280.jpg'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              Container(
                width: double.infinity,
                height: 70,
                // color: Colors.pink[50],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 70.0,
                      width: 180,
                      child: FlatButton.icon(
                        icon: Icon(
                          Icons.directions_walk,
                          color: Colors.deepOrange,
                        ),
                        label: Text('行った'),
                        shape: UnderlineInputBorder(),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 70.0,
                      width: 180,
                      child: FlatButton.icon(
                          icon: Icon(
                            Icons.attach_file,
                            color: Colors.yellow[600],
                          ),
                          label: Text('行きたい'),
                          shape: UnderlineInputBorder(),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              _setting(),
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

  Widget _setting() {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1.0, color: Colors.grey[300]))),
      child: Column(
        children: [
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text('プロフィール'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<Null>(
                    builder: (BuildContext context) => ProfilEditeScreen()),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text('フォローしている / されている'),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text('設定'),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text('登録されていない施設を報告する'),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text('利用規約'),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text('プライバシーポリシー'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
