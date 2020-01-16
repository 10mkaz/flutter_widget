import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/_any_test.dart';
import 'package:flutter_widget/row.dart';
import 'package:flutter_widget/screen.dart';
import 'package:flutter_widget/yield.dart';

import 'counter.dart';
import 'delay.dart';
import 'listview.dart';

// Flutter のメインクラスから起動されるメニュークラス
// StatefulWidget なのでStateクラスを作成する
class MainMenu extends StatefulWidget {
  MainMenu({Key key}) : super(key: key);
  @override
  _MainMenuState createState() => _MainMenuState();
}

// メニュークラスのStateクラス
class _MainMenuState extends State<MainMenu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main menu Bar'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FlatButton(
              child: Text('MyScreen Button'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyScreen()),
                );
              },
            ),

            FlatButton(
              child: Text('MyRow Button'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyRow()),
                );
              },
            ),

            FlatButton(
              child: Text('MyCounter Button'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCounter()),
                );
              },
            ),

            FlatButton(
              child: Text('ListView Button'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewScreen()),
                );
              },
            ),

            FlatButton(
              child: Text('MyDelay(1) Button (see Console)'),
              onPressed: () {
                MyDelay.delay1();
              },
            ),

            FlatButton(
              child: Text('MyDelay(2) Button (see Console)'),
              onPressed: () {
                MyDelay.delay2();
              },
            ),

            FlatButton(
              child: Text('Yield test'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => YieldTest()),
                );
              },
            ),

            FlatButton(
              child: Text('Any test'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnyTest()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

}
