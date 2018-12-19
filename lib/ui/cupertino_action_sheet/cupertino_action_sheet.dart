import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetExample extends StatefulWidget {
  final String title;

  CupertinoActionSheetExample(this.title);

  @override
  CupertinoActionSheetExampleState createState() {
    return new CupertinoActionSheetExampleState();
  }
}

class CupertinoActionSheetExampleState
    extends State<CupertinoActionSheetExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: new Builder(
        builder: (BuildContext context) {
          return Center(
            child: CupertinoButton(
                borderRadius: BorderRadius.circular(8),
                color: CupertinoColors.activeBlue,
                child: Text(
                  'Show Action sheet',
                  style: TextStyle(color: CupertinoColors.white),
                ),
                onPressed: () {
                  containerForSheet<String>(
                    context: context,
                    child: CupertinoActionSheet(
                        title: const Text("Action Title"),
                        message: const Text("Action description goes here"),
                        actions: <Widget>[
                          CupertinoActionSheetAction(
                            child: const Text("Action 1"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          CupertinoActionSheetAction(
                            child: const Text("Action 1"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          CupertinoActionSheetAction(
                            child: const Text("Action 2"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          CupertinoActionSheetAction(
                            child: const Text("Action 3"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          CupertinoActionSheetAction(
                            child: const Text("Action 4"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          child: const Text('Cancel'),
                          isDefaultAction: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )),
                  );
                }),
          );
        },
      ),
    );
  }

  void containerForSheet<T>({BuildContext context, Widget child}) {
    showCupertinoModalPopup<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }
}
