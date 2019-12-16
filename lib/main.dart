import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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

              Text(
                'Text 2',
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
        ),
    );
  }
}
