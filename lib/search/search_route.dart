import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchState();
}

GlobalKey globalKey = GlobalKey();

class SearchState extends State<Search> {
  bool checkBox1Value = false;
  bool checkBox2Value = false;
  bool checkBox3Value = false;
  bool checkBox4Value = false;
  bool checkBox5Value = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("施設を探す・調べる"),
        backgroundColor: Colors.blue[400],
      ),
      body: Container(
        color: Colors.white,
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
                Icon(
                  Icons.location_on,
                  size: 35.0,
                  color: Colors.orange[900],
                ),
                SizedBox(width: 5.0),
                Text(
                  '近くの施設から探す',
                  style: TextStyle(fontSize: 15, color: Colors.grey[850]),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 13),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.store,
                    size: 28,
                    color: Colors.blue[300],
                  ),
                  hintText: "エリア（東京、大阪）",
                  hintStyle: TextStyle(
                    fontSize: 16.0,
                  ),
                  //下の線なし表示
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                      icon: Icon(
                        Icons.cancel,
                        size: 16.0,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        debugPrint('222');
                      })),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.local_offer,
                    size: 25,
                    color: Colors.green[400],
                  ),
                  hintText: "キーワード（施設名、ジャンル）",
                  hintStyle: TextStyle(
                    fontSize: 16.0,
                  ),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                      icon: Icon(
                        Icons.cancel,
                        size: 16.0,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        debugPrint('333');
                      })),
            ),
          ),
          Expanded(
            child: CheckboxListTile(
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
          ),
          Expanded(
            child: CheckboxListTile(
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
          ),
          Expanded(
            child: CheckboxListTile(
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
          ),
          Expanded(
            child: CheckboxListTile(
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
          ),
          Expanded(
            child: CheckboxListTile(
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
