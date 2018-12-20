import 'package:flutter/cupertino.dart';

class CupertinoTabBarExample extends StatefulWidget {
  final String title;

  CupertinoTabBarExample(this.title);

  @override
  _CupertinoTabBarExampleState createState() => _CupertinoTabBarExampleState();
}

class _CupertinoTabBarExampleState extends State<CupertinoTabBarExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
        previousPageTitle: "Home",
      ),
      child: Container(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.conversation_bubble),
                title: Text('Support'),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled),
                title: Text('Profile'),
              ),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            assert(index >= 0 && index <= 2);
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => Center(child: Text("hello"),),
                  defaultTitle: 'Colors',
                );
                break;
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => Text("hello"),
                  defaultTitle: 'Support Chat',
                );
                break;
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => Text("hello"),
                  defaultTitle: 'Account',
                );
                break;
            }
            return null;
          },
        ),
      ),
    );
  }
}
