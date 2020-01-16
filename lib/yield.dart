import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Yield の使い方
class YieldTest extends StatefulWidget {
  YieldTest({Key key}) : super(key: key);

  @override
  _YieldTestState createState() => _YieldTestState();
}

class _YieldTestState extends State<YieldTest> {
  int _dispValue = 0;

  _YieldTestState(){
    _yieldTest();
  }

  void _yieldTest() async {

    // 同期ジェネレータ
    // Iterable<データ型>で戻り値を返却する必要がある
    // yieldの値が順次返却される
    print('countIterator（同期ジェネレータ） ---');
    Iterable<int> countIterator(int to) sync* {
      for (int i = 1; i <= to; i++) {
        yield i;
      }
    }

    print('-- iterator.forEach ---');
    var iterator = countIterator(2);
    for (var value in iterator) {
      print(value);
    }

    // 非同期ジェネレータ
    // Stream<データ型>で戻り値を返却する必要がある
    // yieldの値が順次返される
    print('countStream（非同期ジェネレータ） ---');
    Stream<int> countStream(int to) async* {
      for (int i = 1; i <= to; i++) {
        yield i;
      }
    }

    // Streamの結果を同期で受け取るにはawait forを使う。yieldの結果を順次取り出すイメージ
    print('-- await for ---');
    var stream1 = countStream(3);
    await for (var value in stream1) {
      print(value);
    }

    // streamの結果を非同期で受け取るにはlistenで結果を待つ
    print('-- listen ---');
    var stream2 = countStream(4);
    stream2.listen((value){
      print(value);
    });

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

        title: Text("Yield Test (see Console)"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'See Console'
            ),
            Text(
              '$_dispValue',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
