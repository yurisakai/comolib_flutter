import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchState();
}

class SearchState extends State<Search> {
  // <- (※1)
  bool checkBox1Value = false;
  bool checkBox2Value = false;
  bool checkBox3Value = false;
  bool checkBox4Value = false;
  bool checkBox5Value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("施設を探す・調べる"),
        backgroundColor: Colors.blue[400], // <- (※2)
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(children: [
          Container(
            height: 70.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 8, bottom: 8),
            padding: EdgeInsets.all(8),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 20.0),
                Text(
                  '近くの施設から探す',
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                )
              ],
            ),
          ),
          ListView(shrinkWrap: true, children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("エリア"),
              // trailing: Icon(Icons.more_vert),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.more),
              title: Text("キーワード"),
              // trailing: Icon(Icons.more_vert),
              onTap: () {},
            ),
          ]),
          CheckboxListTile(
            activeColor: Colors.red[300],
            title: Text('オムツ替え施設'),
            //チェックボックスを右端に表示するか、左端に表示するか。ListTileControlAffinity.platform だと右端表示のこと
            controlAffinity: ListTileControlAffinity.leading,
            selected: checkBox1Value,
            value: checkBox1Value,
            onChanged: (bool value) {
              //setState は StatefulWidget で使う
              setState(() {
                checkBox1Value = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Colors.red[300],
            title: Text('授乳室'),
            controlAffinity: ListTileControlAffinity.leading,
            selected: checkBox2Value,
            value: checkBox2Value,
            onChanged: (bool value) {
              setState(() {
                checkBox2Value = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Colors.red[300],
            title: Text('個室'),
            controlAffinity: ListTileControlAffinity.leading,
            selected: checkBox3Value,
            value: checkBox3Value,
            onChanged: (bool value) {
              setState(() {
                checkBox3Value = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Colors.red[300],
            title: Text('禁煙'),
            controlAffinity: ListTileControlAffinity.leading,
            selected: checkBox4Value,
            value: checkBox4Value,
            onChanged: (bool value) {
              setState(() {
                checkBox4Value = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Colors.red[300],
            title: Text("ベビーカーOK"),
            controlAffinity: ListTileControlAffinity.leading,
            selected: checkBox5Value,
            value: checkBox5Value,
            onChanged: (bool value) {
              setState(() {
                checkBox5Value = value;
              });
            },
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //Row はchild ではなくchildren を使うこと
              children: <Widget>[
                SizedBox(
                  height: 37.0,
                  width: 165.0,
                  child: FlatButton(
                    child: Text('クリア'),
                    color: Colors.grey[600],
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 37.0,
                  width: 165.0,
                  child: FlatButton(
                    child: Text('検索する'),
                    color: Colors.blue[400],
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ]),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 30.0,
            width: 300.0,
            //アイコンとボタンをひとつの塊として表示
            child: FlatButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.local_library,
                size: 14.0,
              ),
              label: Text(
                'アプリに登録されていない施設を登録する',
                style: TextStyle(fontSize: 11),
              ),
              color: Colors.grey[350],
              textColor: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}
