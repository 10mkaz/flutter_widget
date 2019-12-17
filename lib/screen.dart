import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  MyScreen({Key key}) : super(key: key);
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    print('********** class _MyScreenState build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('MyScreen Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'MyScreen',
            ),
            FlatButton(
              child: Text('Back'),
              onPressed: () {
                print('********** class _MyScreenState FlatButton: Back');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

