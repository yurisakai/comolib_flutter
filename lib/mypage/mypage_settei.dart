import 'package:flutter/material.dart';
import 'package:comolib/mypage/mypage_settei_username.dart';
import 'package:comolib/mypage/mypage_settei_email.dart';
import 'package:comolib/mypage/mypage_settei_password.dart';

class SetteiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('設定'),
          backgroundColor: Colors.blue[400],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10),
                child: Text('アカウント管理')),
            ListView(
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
              children: [
                _accountsetting('ユーザー名', Icon(Icons.navigate_next), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<Null>(
                        builder: (BuildContext context) => UserNameScreen()),
                  );
                }),
                _accountsetting('メールアドレス', Icon(Icons.navigate_next), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<Null>(
                        builder: (BuildContext context) => EmailScreen()),
                  );
                }),
                _accountsetting('パスワード', Icon(Icons.navigate_next), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<Null>(
                        builder: (BuildContext context) => PasswordScreen()),
                  );
                }),
                _accountsetting(
                    'Appleアカウント連携', Icon(Icons.navigate_next), null),
                _accountsetting(
                    'Facebookアカウント連携', Icon(Icons.navigate_next), null),
                _accountsetting(
                    'Twitterアカウント連携', Icon(Icons.navigate_next), null),
              ],
            ),
          ],
        ));
  }

  Widget _accountsetting(
    String title,
    Icon icon,
    GestureTapCallback onTap,
  ) {
    return GestureDetector(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Colors.grey[400]),
            ),
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
              Container(margin: EdgeInsets.all(10), child: icon),
            ],
          ),
        ),
        onTap: onTap);
  }
}
