import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ios_playground/utils/list_data.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: buildCupertinoNavigationBar(),
      child: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/${names[index].title}");
                },
                child: Center(
                  child: Text(names[index].title),
                ),
              ),
          itemCount: names.length,
        ),
      ),
    );
  }

  CupertinoNavigationBar buildCupertinoNavigationBar() {
    return CupertinoNavigationBar(
      middle: Text(widget.title),
      trailing: Icon(CupertinoIcons.ellipsis),
      leading: Icon(CupertinoIcons.loop),
    );
  }
}
