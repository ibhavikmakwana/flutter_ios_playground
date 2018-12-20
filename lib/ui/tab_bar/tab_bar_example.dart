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
        child: SafeArea(
          child: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.conversation_bubble),
                  title: Text('Messages'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.phone),
                  title: Text('Contacts'),
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
                    builder: (BuildContext context) =>
                        Container(
                          color: CupertinoColors.activeBlue,
                          child: Center(
                              child: Text(
                                "Messages",
                                style: TextStyle(color: CupertinoColors.white),
                              )),
                        ),
                    defaultTitle: 'Messages',
                  );
                  break;
                case 1:
                  return CupertinoTabView(
                    builder: (BuildContext context) =>
                        Container(
                          color: CupertinoColors.activeOrange,
                          child: Center(
                              child: Text(
                                "Contacts",
                                style: TextStyle(color: CupertinoColors.white),
                              )),
                        ),
                    defaultTitle: 'Contacts',
                  );
                  break;
                case 2:
                  return CupertinoTabView(
                    builder: (BuildContext context) =>
                        Container(
                          color: CupertinoColors.activeGreen,
                          child: Center(
                              child: Text(
                                "Profile",
                                style: TextStyle(color: CupertinoColors.white),
                              )),
                        ),
                    defaultTitle: 'Profile',
                  );
                  break;
              }
              return null;
            },
          ),
        ),
      ),
    );
  }
}
