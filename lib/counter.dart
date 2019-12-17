import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  MyCounter({Key key}) : super(key: key);
  @override
  _MyCounterState createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _count=0;
  @override
  Widget build(BuildContext context) {
    print('********** class _MyCounterState build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('MyCounter Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Counter -- $_count'),
              onPressed: () {
                print('********** class _MyCounterState FlatButton: $_count');
                _count++;
                setState(() {
                });
              },
            ),
            FlatButton(
              child: Text('Back'),
              onPressed: () {
                print('********** class _MyCounterState FlatButton: Back');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}


