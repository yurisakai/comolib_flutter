import 'package:flutter/material.dart';

class ProfilEditeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('プロフィール編集'),
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'ID',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 7),
              Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey[500]),
                      bottom: BorderSide(color: Colors.grey[500])),
                ),
                child: TextFormField(),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'プロフィール画像',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.all(8),
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey[500]),
                      bottom: BorderSide(color: Colors.grey[500])),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.red,
                      height: 90,
                      width: 50,
                      // child: Image(image: null),
                    ),
                    Icon(Icons.navigate_next),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'お住まいの地域',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 7),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.grey[500]),
                        bottom: BorderSide(color: Colors.grey[500])),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('お住まいの地域を選択'), Icon(Icons.navigate_next)],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'お子様について',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 7),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.grey[500]),
                        bottom: BorderSide(color: Colors.grey[500])),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('1人目のお子様の情報を入力'),
                      Icon(Icons.navigate_next)
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
