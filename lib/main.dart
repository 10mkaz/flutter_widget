import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
  String _button_title="button 0";
  int _count=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
            children: <Widget>[
              Text(
                'Text 0',
              ),

              Row(
                  children: <Widget>[
                    Text(
                      'Text A ',
                    ),
                    Text(
                      'Text B ',
                    ),
                    Text(
                      'Text C ',
                    ),
                  ]
              ),

              Text(
                'Text 1',
              ),

              FlatButton(
                onPressed: () {
                  _count++;
                  _button_title = "button $_count";
                  setState(() {
                  });
                },
                child: Text(_button_title),
              ),

              Row(
                children: <Widget>[
                  Text(
                    'Text a ',
                  ),
                  Text(
                    'Text b ',
                  ),
                  Text(
                    'Text c ',
                  ),
                  Text(
                    'Text d ',
                  ),
                ]
              ),

              Text(
                'Text 3',
              ),
            ],
          ),

    );
  }
}

