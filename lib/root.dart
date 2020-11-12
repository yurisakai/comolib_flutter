import 'package:flutter/material.dart';
import 'home/home_route.dart';
import 'search/search_route.dart';
import 'post/post_route.dart';
import 'notice/notice_route.dart';
import 'mypage/mypage_route.dart';

class RootWidget extends StatefulWidget {
  const RootWidget();

  @override
  _Root createState() => _Root();
}

class _Root extends State<RootWidget> {
  int _selectedIndex = 0;
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];

  static const _footerIcons = [
    Icons.home,
    Icons.search,
    Icons.create,
    Icons.chat,
    Icons.account_box,
  ];

  static const _footerItemNames = [
    'ホーム',
    '探す',
    'コメント投稿',
    'お知らせ',
    'マイページ',
  ];

  var _route = [
    Home(),
    Search(),
    Post(),
    Notice(),
    MyPage(),
  ];

  @override
  void initState() {
    super.initState();
    _bottomNavigationBarItems.add(_updateActiveState(0));
    for (var i = 1; i < _footerItemNames.length; i++) {
      _bottomNavigationBarItems.add(_updateDeactiveState(i));
    }
  }

//アイコンを押したら色が変わる方法
  BottomNavigationBarItem _updateActiveState(int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          _footerIcons[index],
          color: Colors.red[300],
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            fontSize: 9.0,
            color: Colors.red[300],
          ),
        ));
  }

//もともとの表示されてるアイコンの色
  BottomNavigationBarItem _updateDeactiveState(int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          _footerIcons[index],
          color: Colors.black26,
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            fontSize: 9.0,
            color: Colors.black26,
          ),
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavigationBarItems[_selectedIndex] =
          _updateDeactiveState(_selectedIndex);
      _bottomNavigationBarItems[index] = _updateActiveState(index);
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _route.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _bottomNavigationBarItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
