import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 各種テストに使えるエントリー
class AnyTest extends StatefulWidget {
  AnyTest({Key key}) : super(key: key);
  @override
  _AnyTestState createState() => _AnyTestState();
}

class _AnyTestState extends State<AnyTest> {
  int _dispValue = 0;


  _AnyTestState(){
    mytest();
  }

  void mytest() async {
    //TODO ここにテストコードを書けます。


  }

  void _onPressed() {
    setState(() {
      _dispValue++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Any test"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_dispValue',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        tooltip: 'onPressed',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
