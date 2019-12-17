import 'package:flutter/material.dart';
import 'screen.dart';
import 'row.dart';
import 'counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('********** class MyApp build()');
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print('********** class _MyHomePageState build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('MyHome Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            FlatButton(
              child: Text('MyScreen Button'),
              onPressed: () {
                print('********** class _MyHomePageState FlatButton: MyScreen Button');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyScreen()),
                );
              },
            ),

            FlatButton(
              child: Text('MyRow Button'),
              onPressed: () {
                print('********** class _MyHomePageState FlatButton: MyRow Button');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyRow()),
                );
              },
            ),

            FlatButton(
              child: Text('MyCounter Button'),
              onPressed: () {
                print('********** class _MyHomePageState FlatButton: MyCounter Button');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCounter()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}

