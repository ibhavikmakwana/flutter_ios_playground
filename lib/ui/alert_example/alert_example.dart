import 'package:flutter/cupertino.dart';

class AlertExample extends StatelessWidget {
  final String title;

  AlertExample(this.title);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
        previousPageTitle: "Home",
      ),
      child: SafeArea(
        child: Container(
          child: Center(
            child: CupertinoButton(
              onPressed: () {
                openActionSheet<String>(
                    context: context,
                    child: CupertinoAlertDialog(
                      title: Text("Alert"),
                      content: Text("This is an alert.\n "),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          child: Text("Don't Allow"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text("Allow"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ));
              },
              borderRadius: BorderRadius.circular(8),
              color: CupertinoColors.activeBlue,
              child: Text(
                'Show Alert',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void openActionSheet<T>({BuildContext context, Widget child}) {
    showCupertinoModalPopup<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }
}
