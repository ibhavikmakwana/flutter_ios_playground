import 'package:flutter/cupertino.dart';

class DateTimePickerExample extends StatefulWidget {
  final String title;

  DateTimePickerExample(this.title);

  @override
  _DateTimePickerExampleState createState() => _DateTimePickerExampleState();
}

class _DateTimePickerExampleState extends State<DateTimePickerExample> {
  Duration _timer = const Duration();

  DateTime dateNow = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
        previousPageTitle: "Home",
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CupertinoButton(
                borderRadius: BorderRadius.circular(8),
                color: CupertinoColors.activeBlue,
                child: Text(
                  'Show Timer Picker',
                  style: TextStyle(color: CupertinoColors.white),
                ),
                onPressed: () {
                  showTimerPicker(context);
                },
              ),
              CupertinoButton(
                borderRadius: BorderRadius.circular(8),
                color: CupertinoColors.activeBlue,
                child: Text(
                  'Show Date Picker',
                  style: TextStyle(color: CupertinoColors.white),
                ),
                onPressed: () {
                  showDatePicker(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showTimerPicker(BuildContext context) {
    showPopUp(
      context: context,
      child: Container(
        color: CupertinoColors.white,
        height: 200,
        child: CupertinoTimerPicker(
          onTimerDurationChanged: (timer) {
            setState(() {
              _timer = timer;
            });
          },
          mode: CupertinoTimerPickerMode.hms,
          initialTimerDuration: _timer,
        ),
      ),
    );
  }

  void showPopUp({BuildContext context, Widget child}) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }

  void showDatePicker(BuildContext context) {
    showPopUp(
      context: context,
      child: Container(
        color: CupertinoColors.white,
        height: 200,
        child: CupertinoDatePicker(
          onDateTimeChanged: (date) {
            setState(() {
              dateNow = date;
            });
          },
          mode: CupertinoDatePickerMode.date,
          initialDateTime: dateNow,
        ),
      ),
    );
  }
}
