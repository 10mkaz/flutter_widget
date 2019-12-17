import 'package:flutter/material.dart';


class MyRow extends StatefulWidget {
  MyRow({Key key}) : super(key: key);
  @override
  _MyRowState createState() => _MyRowState();
}

class _MyRowState extends State<MyRow> {
  @override
  Widget build(BuildContext context) {
    print('********** class _MyRowState build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('MyRow Bar'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'MyRow',
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

            FlatButton(
              child: Text('Back'),
              onPressed: () {
                print('********** class _MyRowState FlatButton: Back');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}


