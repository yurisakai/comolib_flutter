import 'package:flutter/material.dart';

class UserNameScreen extends StatefulWidget {
  @override
  _UserNameScreenState createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  final _formKey = GlobalKey<FormState>();

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('設定'),
        backgroundColor: Colors.blue[400],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '現在のユーザー名',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.only(left: 6),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Align(
                //textの位置調整のコード。Alignment(左右値, 上下値) -1 が一番左もしくは上、0が真ん中、1が右もしくは下。　
                alignment: Alignment(-1, 0),
                child: Text('ユーザー名'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              '新しいユーザー名',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
                        SizedBox(height: 5),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 7),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Form(key: _formKey,
                child: TextFormField(
                  controller: myController,
            validator: (value) {
                if (value.isEmpty) {
                  return '何らかのテキスト文字を入力してください。';
                }
                return null;
            },
                  decoration: InputDecoration(
                    hintText: '新しいユーザー名',
                    hintStyle: TextStyle(fontSize: 13),
                  ),
                ),
              ),
            ),
                                    SizedBox(height: 40),
            Container(
              alignment: Alignment.center,
             child: ButtonTheme(
  minWidth: 300.0,
  height: 45.0,
              child: RaisedButton(child: Text('保存'),
               shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(6.0),
  ),
              color: Colors.blue[400],
                    textColor: Colors.white,
                    onPressed: () { if (_formKey.currentState.validate()) {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text(myController.text)));
                }},

              ),
                                    
            ),
            ),
            SizedBox(height: 25),
            Container(
              alignment: Alignment.center,
             child: ButtonTheme(
  minWidth: 300.0,
  height: 45.0,
              child: RaisedButton(child: Text('キャンセル'),color: Colors.white,
              shape: OutlineInputBorder(
                borderSide: BorderSide(
          color: Colors.blue,),
    // borderRadius: BorderRadius.all(Radius.circular(10.0),
    ),
                    textColor: Colors.blue,
                    onPressed: () {},

              ),
                                    
            ),
            ),
          ],
        ),
      ),
    );
  }
}
