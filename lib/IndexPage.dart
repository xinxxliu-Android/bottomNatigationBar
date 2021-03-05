import 'package:flutter/material.dart';

import 'home/CartPage.dart';
import 'home/HomePage.dart';
import 'home/MsgPage.dart';
import 'home/PersonPage.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

int currentIndex;
final pages = [HomePage(), MsgPage(), CartPage(), PersonPage()];
final List<BottomNavigationBarItem> bottomNavItems = [
  BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
  BottomNavigationBarItem(icon: Icon(Icons.message), title: Text('消息')),
  BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text('购物车')),
  BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('个人中心')),
];

class _IndexPageState extends State<IndexPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('底部导航栏'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: bottomNavItems,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.shifting,
          onTap: (index) {
            _changePage(index);
          },
        ),
        body: pages[
          currentIndex
        ],
      ),
    );
  }

  /**
   * 页面切换
   */
  void _changePage(int index) {
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}
