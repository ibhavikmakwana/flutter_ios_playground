import 'package:flutter/cupertino.dart';
import 'package:flutter_ios_playground/home.dart';
import 'package:flutter_ios_playground/ui/alert_example/alert_example.dart';
import 'package:flutter_ios_playground/ui/cupertino_action_sheet/cupertino_action_sheet.dart';
import 'package:flutter_ios_playground/ui/date_time_picker/date_time_picker.dart';
import 'package:flutter_ios_playground/ui/nav_bar/cupertino_sliver_navigation_bar.dart';
import 'package:flutter_ios_playground/ui/tab_bar/tab_bar_example.dart';
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
      Strings.alertRoutes: (BuildContext context) =>
          AlertExample(Strings.alertTitle),
      Strings.tabBarExampleRoutes: (BuildContext context) =>
          CupertinoTabBarExample(Strings.tabBarExampleTitle),
      Strings.sliverNavigationBarRoutes: (BuildContext context) =>
          CupertinoSliverNavigationBarExample(),
      Strings.cupertinoTimerPickerRoutes: (BuildContext context) =>
          DateTimePickerExample(Strings.cupertinoTimerPickerTitle),
    };
  }
}
