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
            Text(
              'ID',
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 7),
            Container(
              width: double.infinity,
              height: 45,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'プロフィール画像',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
