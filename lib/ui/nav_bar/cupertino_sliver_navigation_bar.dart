import 'package:flutter/cupertino.dart';
import 'package:flutter_ios_playground/utils/Strings.dart';

class CupertinoSliverNavigationBarExample extends StatelessWidget {
  final String title;

  CupertinoSliverNavigationBarExample({this.title});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        color: CupertinoColors.extraLightBackgroundGray,
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text("Playground"),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(Strings.lorem),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
