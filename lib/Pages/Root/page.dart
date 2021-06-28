import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutterStock/utils/AppColors.dart';
import 'package:flutterStock/utils/iconfont.dart';

import 'package:flutterStock/Pages/Home/home.dart';
import 'package:flutterStock/Pages/Quote/quote.dart';
import 'package:flutterStock/Pages/Finance/finance.dart';
import 'package:flutterStock/Pages/My/my.dart';

class MainRootPage extends StatefulWidget {
  @override
  _MainRootPageState createState() => _MainRootPageState();
}

class _MainRootPageState extends State<MainRootPage> {
  List<Widget> _pages;
  int _tabIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //首屏的四个tab
    _pages = <Widget>[HomePage(), QuotePage(), FinancePage(), MyPage()];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: IndexedStack(
        index: _tabIndex,
        children: _pages,
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Color(AppColors.themeColor),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(IconFont.shouye), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(IconFont.hangqing), title: Text("行情")),
          BottomNavigationBarItem(
              icon: Icon(IconFont.licai), title: Text("理财")),
          BottomNavigationBarItem(icon: Icon(IconFont.wode), title: Text("我的")),
        ],
        activeColor: Color(AppColors.tabItemSelectColor),
        inactiveColor: Color(AppColors.tabItemNormalColor),
        iconSize: 25,
        currentIndex: _tabIndex,
        onTap: (int index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}
