import 'package:flutter/cupertino.dart';
import 'package:flutter_ios_playground/home.dart';
import 'package:flutter_ios_playground/ui/cupertino_action_sheet/cupertino_action_sheet.dart';
import 'package:flutter_ios_playground/utils/Strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: Strings.appName,
      home: MyHomePage(title: Strings.appName),
      routes: routes(),
    );
  }

  ///returns the named routes
  Map<String, WidgetBuilder> routes() {
    return <String, WidgetBuilder>{
      Strings.cupertinoActionSheetRoutes: (BuildContext context) =>
          CupertinoActionSheetExample(Strings.cupertinoActionSheetTitle),
    };
  }
}
